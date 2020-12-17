.class abstract Lcom/android/systemui/SystemUIDefaultModule;
.super Ljava/lang/Object;
.source "SystemUIDefaultModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method static provideAllowNotificationLongPress()Z
    .registers 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "allow_notif_longpress"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method static provideLeakReportEmail()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "leak_report_email"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method static provideShadeController(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 76
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method
