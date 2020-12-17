.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$vO1SpyH7B5eZoPEIHrO5ESmBbaI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$vO1SpyH7B5eZoPEIHrO5ESmBbaI;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$vO1SpyH7B5eZoPEIHrO5ESmBbaI;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->lambda$onFinishedGoingToSleep$1$BiometricUnlockController()V

    return-void
.end method
