.class Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WorkSoundPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController$1;->this$0:Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "android.intent.extra.USER"

    .line 320
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 321
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x16fbb1bb

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2a

    const v1, 0x3eac4465

    if-eq v0, v1, :cond_20

    goto :goto_34

    :cond_20
    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_34

    move p2, v2

    goto :goto_35

    :cond_2a
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_34

    const/4 p2, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p2, -0x1

    :goto_35
    if-eqz p2, :cond_40

    if-eq p2, v2, :cond_3a

    return-void

    .line 327
    :cond_3a
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController$1;->this$0:Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->onManagedProfileRemoved(I)V

    return-void

    .line 323
    :cond_40
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController$1;->this$0:Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->onManagedProfileAdded(I)V

    return-void
.end method
