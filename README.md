# Flutter_Tutorial

## 초기 설치 방법

### 1. 플러터 SDK 설치
* https://flutter.dev/docs/get-started/install
  
원하는 경로에 다운로드 한다.
```
ex) ~/Documents/private/Dev
```

환경변수 설정
```
vi ~/.bash_profile
or 
vi ~/.zshrc
export PATH="$HOME/Documents/private/Dev/flutter/bin:$PATH"
```

적용
```
source .bash_profile
or
source ~/.zshrc
```

필요한 의존성이 무엇인지 확인해본다.
아래의 명령어가 동작하면 환경변수 설정 OK.
```
flutter doctor
```

Android licenses not accepted에 x로 되어있으면 아래와 같이 명령어를 입력하고
flutter doctor를 다시 실행해서 확인한다.
```
flutter doctor --android-licenses
flutter doctor
```

### 2. iOS Setup

* Xcode 다운로드
* 경로 설정
```
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
sudo xcodebuild -license
```

### 3. 안드로이드 스튜디오 설치

* 안드로이드 SDK 설치
* Plugins 메뉴 -> Flutter Plugin 설치
* doctor를 이용해서 필요한 의존성을 설치한다.
```
flutter doctor
```

---

## 파일디렉토리
1. Basic Dart
2. Beginning Flutter Project
  - Splash
  - Row & Column
  - Webview
  - StatelessWidget/StatefulWidget
  - Image/Font
  - Date
