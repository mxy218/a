.class public Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;
.super Ljava/lang/Object;
.source "EarphonePlugedListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;,
        Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEarphoneStateListener:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;

.field private mEarpodRecevier:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;-><init>(Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$1;)V

    iput-object v0, p0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->mEarpodRecevier:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;

    .line 19
    iput-object p1, p0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;)Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->mEarphoneStateListener:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;

    return-object p0
.end method


# virtual methods
.method public registerEarpodRecevier()V
    .registers 3

    .line 23
    new-instance v0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;-><init>(Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$1;)V

    iput-object v0, p0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->mEarpodRecevier:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;

    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 27
    iget-object v1, p0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->mEarpodRecevier:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setOnEarphoneStateChangedListener(Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->mEarphoneStateListener:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;

    return-void
.end method

.method public unregisterEarpodReceiver()V
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->mEarpodRecevier:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
