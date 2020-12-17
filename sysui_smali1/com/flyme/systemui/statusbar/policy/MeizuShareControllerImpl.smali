.class public Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;
.super Ljava/lang/Object;
.source "MeizuShareControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/MeizuShareController;


# instance fields
.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMeizuShareObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mCallbackList:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mMeizuShareObserver:Landroid/database/ContentObserver;

    .line 36
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;)V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->notifyChanged()V

    return-void
.end method

.method private notifyChanged()V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;

    .line 83
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->isEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;->onMeizuShareStateChanged(Z)V

    goto :goto_6

    :cond_1a
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;)V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->notifyChanged()V

    .line 67
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mCallbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    const-string p1, "meizu_share_provider"

    .line 68
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mMeizuShareObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_23
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 16
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->addCallback(Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;)V

    return-void
.end method

.method public isEnabled()Z
    .registers 3

    .line 46
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "meizu_share_provider"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_11

    move v0, v1

    :cond_11
    return v0
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mCallbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_18

    .line 77
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mMeizuShareObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_18
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 16
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->removeCallback(Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 52
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent_enable_mzshare_switch_service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.meizu.share"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_enable"

    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_22

    .line 56
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_27

    .line 59
    :cond_22
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_27
    return-void
.end method
