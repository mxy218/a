.class public Lcom/android/systemui/SystemUIAppComponentFactory;
.super Landroidx/core/app/CoreComponentFactory;
.source "SystemUIAppComponentFactory.java"


# instance fields
.field public mComponentHelper:Lcom/android/systemui/ContextComponentHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroidx/core/app/CoreComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 40
    invoke-super {p0, p1, p2}, Landroidx/core/app/CoreComponentFactory;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object p1

    .line 41
    instance-of p2, p1, Lcom/android/systemui/SystemUIApplication;

    if-eqz p2, :cond_13

    .line 42
    move-object p2, p1

    check-cast p2, Lcom/android/systemui/SystemUIApplication;

    new-instance v0, Lcom/android/systemui/-$$Lambda$SystemUIAppComponentFactory$LTMvIPTiTOOtdqpeHYTYFPUw6Js;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$SystemUIAppComponentFactory$LTMvIPTiTOOtdqpeHYTYFPUw6Js;-><init>(Lcom/android/systemui/SystemUIAppComponentFactory;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/SystemUIApplication;->setContextAvailableCallback(Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;)V

    :cond_13
    return-object p1
.end method

.method public synthetic lambda$instantiateApplication$0$SystemUIAppComponentFactory(Landroid/content/Context;)V
    .registers 2

    .line 44
    invoke-static {p1}, Lcom/android/systemui/SystemUIFactory;->createFromConfig(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/SystemUIRootComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/SystemUIRootComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V

    return-void
.end method
