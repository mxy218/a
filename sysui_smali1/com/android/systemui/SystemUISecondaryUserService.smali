.class public Lcom/android/systemui/SystemUISecondaryUserService;
.super Landroid/app/Service;
.source "SystemUISecondaryUserService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 42
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getServices()[Lcom/android/systemui/SystemUI;

    move-result-object p0

    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/SystemUIService;->dumpServices([Lcom/android/systemui/SystemUI;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .registers 1

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->startSecondaryUserServicesIfNeeded()V

    return-void
.end method
