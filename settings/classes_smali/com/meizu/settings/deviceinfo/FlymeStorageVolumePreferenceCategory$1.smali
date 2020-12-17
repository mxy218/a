.class Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$1;
.super Landroid/os/Handler;
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

    .line 111
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 p1, 0x3

    if-eq v0, p1, :cond_9

    goto :goto_18

    .line 121
    :cond_9
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->access$100(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)V

    goto :goto_18

    .line 116
    :cond_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

    .line 117
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    invoke-static {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->access$000(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;)V

    :goto_18
    return-void
.end method
