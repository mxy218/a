.class public Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;
.super Lcom/android/systemui/doze/DozeMachine$Service$Delegate;
.source "DozeScreenStatePreventingAdapter.java"


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;)V

    return-void
.end method

.method private static isNeeded(Lcom/android/systemui/statusbar/phone/DozeParameters;)Z
    .registers 1

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayStateSupported()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;
    .registers 2

    .line 51
    invoke-static {p1}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->isNeeded(Lcom/android/systemui/statusbar/phone/DozeParameters;)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;

    invoke-direct {p1, p0}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;)V

    move-object p0, p1

    :cond_c
    return-object p0
.end method


# virtual methods
.method public setDozeScreenState(I)V
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 p1, 0x2

    goto :goto_9

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    const/4 p1, 0x6

    .line 42
    :cond_9
    :goto_9
    invoke-super {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->setDozeScreenState(I)V

    return-void
.end method
