.class Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;
.super Landroid/os/AsyncTask;
.source "SystemSoundFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeSoundEffectsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;->this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$1;)V
    .registers 3

    .line 110
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;-><init>(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 110
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .registers 3

    const/4 v0, 0x0

    .line 130
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 132
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;->this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->access$200(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    goto :goto_1c

    .line 134
    :cond_13
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;->this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->access$200(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    .line 136
    :goto_1c
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;->this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->access$300(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sound_effects_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onCancelled()V
    .registers 2

    .line 122
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 123
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;->this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->access$100(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 124
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;->this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->access$100(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_15
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 110
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 2

    .line 144
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 145
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;->this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->access$100(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 146
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;->this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->access$100(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_15
    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .line 114
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 115
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;->this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->access$100(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 116
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment$ChangeSoundEffectsTask;->this$0:Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;->access$100(Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_15
    return-void
.end method
