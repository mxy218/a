.class Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$3;
.super Landroid/os/AsyncTask;
.source "FlymeStorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->initTotalSizeAndAvailSizeAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[J>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 214
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$3;->doInBackground([Ljava/lang/Void;)[J

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[J
    .registers 2

    .line 218
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->access$300(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)[J

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 214
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$3;->onPostExecute([J)V

    return-void
.end method

.method protected onPostExecute([J)V
    .registers 10

    .line 223
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->access$202(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;Z)Z

    .line 224
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->access$400(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    move-result-object v2

    sget-object v3, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    const/4 v0, 0x0

    aget-wide v4, p1, v0

    aget-wide v6, p1, v1

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->initMemoryInfos([Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;JJ)V

    .line 225
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->access$500(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
