# FLutter & Dart Project

- flutter 도구를 이용하여 Cros platform 프로젝트 작성
- Android, IOS, Window, Web, MacOS, Linux 운영체제에서 작동되는
  프로젝트를 한번의 코딩으로 작성할 수 있다

## SDK 설치

- `https://flutter.dev` 에서 `flutter sdk` 다운로드
- 압축풀기: `c:\dev\flutter` 폴더에 압축풀기
- `시스템 환경변수 path`에 `flutter/bin` 폴더 지정해 주기
- cmd 창에서 flutter 명령 입력하여 확인하기
- vscode 터미널 창에서 flutter 명령 입력하여 확인하기

## vscode 확장팩 설치

- flutter 검색하여 flutter, fluttere widget snapshot, flutter files 도구 설치하기
- dart 검색하여 dart lang 설치확인

## flutter와 Android studio 연결하기

- flutter doctor
- Android cmd-line toolchain 설치
- flutter doctor --android-licenses

### 문제 발생하면

- dart pub cache repair
- dart pub cache clean

## Flutter 프로젝트 생성

- Flutter 프로젝트는 vscode에 생성하는 명령이 있다
- vscode를 사용하여 프로젝트르 생성하면 개별폴더로 프로젝트가 open 된다
- cmd, shell 명령으로 프로젝트를 생성한다
- 생성하는 명령 : flutter create --org=com.callor [project name]

## Flutter 프로젝트를 작성하는 과정에서 upgrade

- flutter 도구 upgrade

```bash
 flutter pub upgrade outdated
 flutter pub upgrade --major-versions
 flutter clean
 flutter get
```

- upgrade 과정에서 문제가 발생하는 경우 특히 flitter clean에 많이 오류가 발생한다
- `flutter pub cache repair를 실행하고 flutter clean 을 실행
- 프로젝트 폴더의 bulid 폴더를 삭제하고 fluttter clean을 실행

## Template 이 없는 기본 구조의 프로젝트 생성

```bash
flutter create ---org=com.callor 폴더명 -e
```

## git repository clone 한 프로젝트

- 각 프로젝트 폴더에서 : flutter pub get 실행하기
- 오류가 발생하면 : flutter clean
