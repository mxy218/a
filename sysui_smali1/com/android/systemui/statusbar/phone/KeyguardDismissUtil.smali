.class public Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;
.super Ljava/lang/Object;
.source "KeyguardDismissUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private volatile mDismissHandler:Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V
    .registers 3

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->mDismissHandler:Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;

    if-nez p0, :cond_f

    const-string p0, "KeyguardDismissUtil"

    const-string p2, "KeyguardDismissHandler not set."

    .line 56
    invoke-static {p0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-interface {p1}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    return-void

    .line 60
    :cond_f
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method

.method public setDismissHandler(Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->mDismissHandler:Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;

    return-void
.end method
