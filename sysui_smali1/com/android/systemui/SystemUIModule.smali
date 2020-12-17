.class public abstract Lcom/android/systemui/SystemUIModule;
.super Ljava/lang/Object;
.source "SystemUIModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/android/systemui/assist/AssistModule;
    }
.end annotation


# direct methods
.method static provideKeyguardLiftController(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/AsyncSensorManager;)Lcom/android/systemui/statusbar/phone/KeyguardLiftController;
    .registers 5
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_e
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/AsyncSensorManager;)V

    return-object v0
.end method
