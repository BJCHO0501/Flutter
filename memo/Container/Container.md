# 📦 Container

> [컨테이너](https://namu.wiki/w/컨테이너)

- 컨테이너 클래스는 자식 위젯을 한개 포함하며, 크기를 지정할 수 있다
- 우리가 아는 그 컨테이너와 같이 위젯을 담을 수 있는 상자라 볼 수 있다.

```dart
Container({
    super.key,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.child,
    this.clipBehavior = Clip.none,
}...
```

- 위와같은 생성자를 가지고 있으며, 자주 사용하는건 **`padding, color, width, height, child`** 등이 있을것 같다.

## 사용해보기

![code1](https://github.com/BJCHO0501/Flutter/blob/main/memo/Container/image/code1.png?raw=true)

- 위는 간단하게 컨테이너를 표시한 코드이다. 실행 결과는 아래와 같다.

<img src="https://github.com/BJCHO0501/Flutter/blob/main/memo/Container/image/result1.png?raw=true" alt="code1" style="zoom:25%;" />

- 코드를 보면 가로, 세로 100의 색이 검정인 컨테이너를 만들어 넣었다는걸 알 수 있다.
- 조금더 추가하여, 컨테이너의 child를 사용한 뷰를 만들어 보자.

![code1](https://github.com/BJCHO0501/Flutter/blob/main/memo/Container/image/code2.png?raw=true)

- 위 코드에서 **`Text`**위젯을 추가해 보았다. 이렇게 하면 아래와 같이 컨테이너 안에 **`Text`**위젯이 들어가게 된다.

<img src="https://github.com/BJCHO0501/Flutter/blob/main/memo/Container/image/result2.png?raw=true" alt="Untitled" style="zoom:25%;" />

## 결론 🔖

- 결론적으로 컨테이너는 **width**와 **height**을 이용해 크기를 조절하고, **child**에 다른 위젯을 넣어 사용하는 위젯이라 볼 수 있다.
- 주로 어떤 위젯들을 배치하기 전 배경같은 존재로 쓸일이 많을것 같다.
- 다음에는 컨테이너를 커스텀 하는 **decoration**에 대해 정리해 봐야겠다.

## 참고 💡

[[flutter\] 20강 | 컨테이너 위젯 (container widget) 되짚어 보기.](https://rldd.tistory.com/173)

[Layouts in Flutter](https://docs.flutter.dev/ui/layout)