package DGBMetadata {
    /* DFTElements pacakge defines all possible elements (gates and BEs)
    that are used to construct fault trees. */
    package DFTElements {  
        package DFTGates {
            
            metadata def AND;
            metadata def OR;
            metadata def VOT {  
                /* if any k-out-of-n components fail (input events), 
                the system will fail (output event) n number of input events */ 
                attribute k : Number; 
            }
            metadata def SPARE;
            metadata def PAND;
            metadata def POR;
            metadata def FDEP {
                /* The failure of the trigger_element renders the children of FDEP failed 
                as per the value of probability attribute. */
                occurrence trigger_element;
                attribute probability: Real; 
            }
            metadata def FSEQ;
            metadata def MUTEX;
        }
        package DFTBEs{
            abstract metadata def BE{
                /* The value of dormancy attribute is only relevant if the BE is a 
                child of a spare spare gate. */
                attribute dormancy:Real; 
            }
        
            abstract metadata def BE_CONSTANT_DISTRIBUTION specializes BE {
                attribute prob:Real;
            }
            
            abstract metadata def BE_EXPONENTIAL_DISTRIBUTION specializes BE {
                attribute rate:Real;
            }
            
            abstract metadata def BE_ERLANG_DISTRIBUTION specializes BE {
                attribute rate:Real;
                attribute phases:Real;
            }
            
            abstract metadata def BE_NORMAL_DISTRIBUTION specializes BE {
                attribute mean:Real;
                attribute stddev:Real;
            }
            
            abstract metadata def BE_WEIBULL_DISTRIBUTION specializes BE {
                attribute rate:Real;
                attribute shape:Real;
            }
        }
        /* TOP_LEVEL metadata is used to annotate an element of a 
        fault tree as a top level element. More than one elements
        can be annotated as TOP_LEVEL elements. This helps generate
        multiple fault trees (for difference scenarios) collectively 
        that may share Gates and BEs.*/
        metadata def TOP_LEVEL;
        public import ScalarValues::*; 
        public import DFTGates::*;
        public import DFTBEs::*;
    }
}
/* FailureModes pacakge defines all failure modes that may be used 
to annotate elements of SysML model with safety information. */
package FailureModes {
    
    public import DGBMetadata::DFTElements::*;
    /* DFTParameters enumiration defines constants used to annotate 
    failure rates/probabilites/shares/etc. of BEs in fault trees. */
    enum def DFTParameters :> Real {
        FIT1 = 0.000000001;
        FIT2 = 0.000000002;
        FIT3 = 0.000000003;
        FIT4 = 0.000000004;
        prob = 0.2;
        param1 = 10.2;
        param2 = 1.1;
        
    }
    
    metadata def FIT1 specializes BE_EXPONENTIAL_DISTRIBUTION{
            attribute redefines rate = DFTParameters::FIT1;
    }
    metadata def FIT2 specializes BE_EXPONENTIAL_DISTRIBUTION{
            attribute redefines rate = DFTParameters::FIT2;
    }
    metadata def FM1 specializes BE_CONSTANT_DISTRIBUTION{
            attribute redefines prob = DFTParameters::prob;
    }
    metadata def FIT3 specializes BE_ERLANG_DISTRIBUTION{
            attribute redefines rate = DFTParameters::FIT3;
            attribute redefines phases = 2;
    }
    metadata def FM_4 specializes BE_NORMAL_DISTRIBUTION{
            attribute redefines mean = DFTParameters::param1;
            attribute redefines stddev = DFTParameters::param2;
    }
    metadata def FIT4 specializes BE_WEIBULL_DISTRIBUTION{
            attribute redefines rate = DFTParameters::FIT4;
            attribute redefines shape = 3;
     }
}

package LaptopPackage {
    private import FailureModes::*;
    part Laptop {
        part CPU1 {
            metadata Failure:FIT2;
        }
        part CPU2 {
            metadata Failure:FIT1;
        }
        part cooling {
            metadata Failure:FIT1;
        }
        part plug {
            metadata Failure:FIT2;
        }
        part battery {
            metadata Failure:FIT2;
        }
        part switch {
            metadata HWF:FIT1;
        }
        metadata power:SPARE about plug::Failure, battery::Failure; 
        metadata processor:AND about CPU1::Failure, CPU2::Failure;
        metadata laptop:OR about power, processor;
        metadata Dep:FDEP about CPU1::Failure, CPU2::Failure {
            trigger_element = cooling::Failure;
        }
        metadata TLE1:TOP_LEVEL about laptop;
        metadata TLE2:TOP_LEVEL about power;
    }

}