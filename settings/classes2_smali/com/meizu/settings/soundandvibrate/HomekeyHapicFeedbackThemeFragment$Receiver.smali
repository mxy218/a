.class final Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "HomekeyHapicFeedbackThemeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)V
    .registers 2

    .line 586
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 587
    iput-boolean p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;->mListening:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$1;)V
    .registers 3

    .line 586
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;-><init>(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 602
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 603
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 604
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;->access$1100(Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;)V

    :cond_11
    return-void
.end method

.method public setListening(Z)V
    .registers 3

    .line 590
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;->mListening:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 591
    :cond_5
    iput-boolean p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;->mListening:Z

    if-eqz p1, :cond_1a

    .line 593
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_23

    .line 596
    :cond_1a
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment$Receiver;->this$0:Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_23
    return-void
.end method
