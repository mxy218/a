.class Lcom/meizu/settings/MzSettingsActivity$1;
.super Ljava/lang/Object;
.source "MzSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/MzSettingsActivity;->initSimcard2Ringtone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/MzSettingsActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/MzSettingsActivity;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/meizu/settings/MzSettingsActivity$1;->this$0:Lcom/meizu/settings/MzSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity$1;->this$0:Lcom/meizu/settings/MzSettingsActivity;

    invoke-static {p0}, Lcom/meizu/settings/MzSettingsActivity;->access$000(Lcom/meizu/settings/MzSettingsActivity;)Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    return-void
.end method
