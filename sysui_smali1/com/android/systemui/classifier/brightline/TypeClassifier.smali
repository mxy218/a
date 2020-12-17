.class public Lcom/android/systemui/classifier/brightline/TypeClassifier;
.super Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.source "TypeClassifier.java"


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    return-void
.end method


# virtual methods
.method public isFalseTouch()Z
    .registers 7

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isVertical()Z

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isUp()Z

    move-result v1

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isRight()Z

    move-result v2

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getInteractionType()I

    move-result p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_3e

    if-eq p0, v4, :cond_3d

    const/4 v5, 0x2

    if-eq p0, v5, :cond_3e

    const/4 v5, 0x4

    if-eq p0, v5, :cond_37

    const/4 v5, 0x5

    if-eq p0, v5, :cond_31

    const/4 v5, 0x6

    if-eq p0, v5, :cond_2b

    const/16 v2, 0x8

    if-eq p0, v2, :cond_37

    const/16 v2, 0x9

    if-eq p0, v2, :cond_3e

    return v4

    :cond_2b
    if-nez v2, :cond_2f

    if-nez v1, :cond_30

    :cond_2f
    move v3, v4

    :cond_30
    return v3

    :cond_31
    if-eqz v2, :cond_35

    if-nez v1, :cond_36

    :cond_35
    move v3, v4

    :cond_36
    return v3

    :cond_37
    if-eqz v0, :cond_3b

    if-nez v1, :cond_3c

    :cond_3b
    move v3, v4

    :cond_3c
    return v3

    :cond_3d
    return v0

    :cond_3e
    if-eqz v0, :cond_42

    if-eqz v1, :cond_43

    :cond_42
    move v3, v4

    :cond_43
    return v3
.end method
