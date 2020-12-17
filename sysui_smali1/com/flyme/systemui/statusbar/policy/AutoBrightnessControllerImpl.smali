.class public Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;
.super Ljava/lang/Object;
.source "AutoBrightnessControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mAutoBrightnessObserver:Landroid/database/ContentObserver;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsAutoBrightnessOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    .line 40
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;Z)Z
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mIsAutoBrightnessOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;)Landroid/content/Context;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;)V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->notifyChanged()V

    return-void
.end method

.method private notifyChanged()V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;

    .line 73
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V
    .registers 2

    .line 78
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->isAutoBrightnessOn()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;->onAutoBrightnessChanged(Z)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V

    const-string p1, "screen_brightness_mode"

    .line 85
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 16
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->addCallback(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V

    return-void
.end method

.method public initAutoBrightness()V
    .registers 5

    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "screen_brightness_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mIsAutoBrightnessOn:Z

    return-void
.end method

.method public isAutoBrightnessOn()Z
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "screen_brightness_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mIsAutoBrightnessOn:Z

    .line 55
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mIsAutoBrightnessOn:Z

    return p0
.end method

.method public isAutoBrightnessSupport()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 92
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 16
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->removeCallback(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V

    return-void
.end method

.method public setAutoBrightnessOn(Z)V
    .registers 4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoBrightnessOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoBrightnessControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "screen_brightness_mode"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
