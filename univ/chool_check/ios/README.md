Xcode를 열고, Runner > Build Settings에서 User-Defined 항목에 GoogleMapsConfig.xcconfig를 포함합니다:
GCC_PREPROCESSOR_DEFINITIONS: $(inherited) -DGMS_API_KEY=\"$(GOOGLE_MAPS_API_KEY)\"