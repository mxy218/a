.class Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;
.super Landroid/content/BroadcastReceiver;
.source "EarphonePlugedListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EarpodRecevier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;->this$0:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$1;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;-><init>(Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    const-string p1, "state"

    .line 40
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 42
    iget-object p2, p0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;->this$0:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    invoke-static {p2}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->access$100(Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;)Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;

    move-result-object p2

    if-eqz p2, :cond_2f

    .line 43
    iget-object p0, p0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$EarpodRecevier;->this$0:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    invoke-static {p0}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->access$100(Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;)Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;

    move-result-object p0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2b

    goto :goto_2c

    :cond_2b
    move p2, v0

    :goto_2c
    invoke-interface {p0, p2}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;->onEarphoneStateChanged(Z)V

    :cond_2f
    return-void
.end method
