!function(global){function factory(EXPERIMENTS,userAttributes,JSCookie){var _module={eventQueue:[]},UNKNOWN_TREATMENT_KEY="treatment_unknown",NOT_IN_EXPERIMENT_KEY="not_in_experiment",ERF_STUB_KEY="ERF_STUB",subjectIdHash={user:function(){return userAttributes.id
},bev:function(){return JSCookie.cookie("bev")
}};
function fnv1aHash(key){var hash=2166136261;
for(var i=0;
i<key.length;
++i){hash^=key.charCodeAt(i);
hash+=(hash<<1)+(hash<<4)+(hash<<7)+(hash<<8)+(hash<<24)
}return hash>>>0
}function getBucket(experimentName,id,buckets){var key="experiment: "+experimentName.toLowerCase()+" subject: "+id;
return(fnv1aHash(key)%buckets)+1
}function getInExperimentBucket(experimentName,id){var key="in experiment? experiment: "+experimentName.toLowerCase()+" subject: "+id;
return(fnv1aHash(key)%100)+1
}function deliverTreatment(experimentName,treatment,treatmentsSnippets){if(!(treatment in treatmentsSnippets)){treatment=UNKNOWN_TREATMENT_KEY
}_module.logTreatment(experimentName,treatment);
return treatmentsSnippets[treatment]()
}function deliverUnknownTreatment(experimentName,treatmentsSnippets){return deliverTreatment(experimentName,UNKNOWN_TREATMENT_KEY,treatmentsSnippets)
}_module.logTreatment=function(experimentName,result){_module.eventQueue.push({experiment:experimentName,treatment:result})
};
_module.deliverExperiment=function(experimentName,treatmentsSnippets){var experiment=EXPERIMENTS[experimentName],subjectId,bucket;
if(!(UNKNOWN_TREATMENT_KEY in treatmentsSnippets)){throw new Error("treatment_unknown not passed for experiment "+experimentName)
}if(!experiment){return deliverUnknownTreatment(experimentName,treatmentsSnippets)
}if(ERF_STUB_KEY in experiment){return deliverTreatment(experimentName,experiment[ERF_STUB_KEY],treatmentsSnippets)
}if(!(experiment.subject in subjectIdHash)){return deliverUnknownTreatment(experimentName,treatmentsSnippets)
}subjectId=subjectIdHash[experiment.subject]();
if(!subjectId){return deliverUnknownTreatment(experimentName,treatmentsSnippets)
}if(getInExperimentBucket(experimentName,subjectId)>experiment.percent_exposed){return deliverTreatment(experimentName,NOT_IN_EXPERIMENT_KEY,treatmentsSnippets)
}bucket=getBucket(experimentName,subjectId,experiment.buckets);
for(var i=0,base=0;
i<experiment.treatments.length;
i++){var key=experiment.treatments[i].name,numBuckets=experiment.treatments[i].buckets||1;
base+=numBuckets;
if(bucket<=base){return deliverTreatment(experimentName,key,treatmentsSnippets)
}}return deliverUnknownTreatment(experimentName,treatmentsSnippets)
};
return _module
}if(global.Airbnb){global.Airbnb.ERF=factory(global.ERF_EXPERIMENTS,global.Airbnb.userAttributes,global.JSCookie)
}else{module.exports=factory
}}(this);