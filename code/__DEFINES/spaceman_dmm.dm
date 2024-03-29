// Interfaces for the SpacemanDMM linter, define'd to nothing when the linter
// is not in use.

// The SPACEMAN_DMM define is set by the linter and other tooling when it runs.
#ifdef SPACEMAN_DMM
	#define RETURN_TYPE(X) set SpacemanDMM_return_type = X
	#define SHOULD_CALL_PARENT(X) set SpacemanDMM_should_call_parent = X
	#define UNLINT(X) SpacemanDMM_unlint(X)
	#define SHOULD_NOT_SLEEP(X) set SpacemanDMM_should_not_sleep = X
#else
	#define RETURN_TYPE(X)
	#define SHOULD_CALL_PARENT(X)
	#define UNLINT(X) X
	#define SHOULD_NOT_SLEEP(X)
#endif
