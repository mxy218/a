.class public Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;
.super Lcom/android/systemui/doze/DozeMachine$Service$Delegate;
.source "DozeSuspendScreenStatePreventingAdapter.java"


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

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDozeSuspendDisplayStateSupported()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;
    .registers 2

    .line 49
    invoke-static {p1}, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;->isNeeded(Lcom/android/systemui/statusbar/phone/DozeParameters;)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;

    invoke-direct {p1, p0}, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;)V

    move-object p0, p1

    :cond_c
    return-object p0
.end method


# virtual methods
.method public setDozeScreenState(I)V
    .registers 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/4 p1, 0x3

    .line 40
    :cond_4
    invoke-super {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->setDozeScreenState(I)V

    return-void
.end method
