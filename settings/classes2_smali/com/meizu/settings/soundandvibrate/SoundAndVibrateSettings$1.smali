.class Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;
.super Ljava/lang/Object;
.source "SoundAndVibrateSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$200(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v1, 0x800

    if-eqz v0, :cond_1a

    .line 143
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$400(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Landroid/net/Uri;I)V

    .line 147
    :cond_1a
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$500(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 148
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    const/4 v2, 0x7

    invoke-static {v1, v0, v2}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$400(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Landroid/net/Uri;I)V

    .line 152
    :cond_32
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$600(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 153
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$400(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Landroid/net/Uri;I)V

    .line 157
    :cond_4d
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$700(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_66

    .line 158
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 160
    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    const/4 v3, 0x5

    invoke-static {v2, v0, v3}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$400(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Landroid/net/Uri;I)V

    .line 162
    :cond_66
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$800(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 163
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x100

    invoke-static {v0, v2}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 165
    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v2, v0, v1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$400(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Landroid/net/Uri;I)V

    .line 167
    :cond_7f
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$900(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 168
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x200

    invoke-static {v0, v1}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$400(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Landroid/net/Uri;I)V

    .line 172
    :cond_99
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$1000(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_b3

    .line 173
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x400

    invoke-static {v0, v2}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v2, v0, v1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$400(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Landroid/net/Uri;I)V

    .line 177
    :cond_b3
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$1100(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_cc

    .line 178
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 180
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    const/16 v1, 0x9

    invoke-static {p0, v0, v1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$400(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Landroid/net/Uri;I)V

    :cond_cc
    return-void
.end method
