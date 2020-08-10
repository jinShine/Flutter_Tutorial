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
export PATH="$HOME/Documents/private/Dev/flutter/bin:$PATH"
```

적용
```
source .bash_profile
```

필요한 의존성이 무엇인지 확인해본다.
아래의 명령어가 동작하면 환경변수 설정 OK.
```
flutter doctor
```
