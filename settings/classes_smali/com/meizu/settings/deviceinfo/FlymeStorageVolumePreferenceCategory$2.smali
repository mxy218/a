.class Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$2;
.super Landroid/content/BroadcastReceiver;
.source "FlymeStorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 152
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->access$200(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 156
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 157
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 158
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->access$100(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)V

    :cond_1a
    return-void
.end method
