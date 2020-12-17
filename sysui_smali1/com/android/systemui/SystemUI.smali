.class public abstract Lcom/android/systemui/SystemUI;
.super Ljava/lang/Object;
.source "SystemUI.java"

# interfaces
.implements Lcom/android/systemui/SysUiServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SystemUI$Injector;
    }
.end annotation


# instance fields
.field public mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;I)V
    .registers 4

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.substName"

    .line 66
    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V
    .registers 3

    if-eqz p2, :cond_6

    const p2, 0x1040465

    goto :goto_9

    :cond_6
    const p2, 0x1040464

    .line 60
    :goto_9
    invoke-static {p0, p1, p2}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method protected onBootCompleted()V
    .registers 1

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public putComponent(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C:TT;>(",
            "Ljava/lang/Class<",
            "TT;>;TC;)V"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    if-eqz p0, :cond_7

    .line 51
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public abstract start()V
.end method
