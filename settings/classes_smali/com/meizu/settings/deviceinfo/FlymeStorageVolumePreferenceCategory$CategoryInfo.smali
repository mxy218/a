.class Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;
.super Ljava/lang/Object;
.source "FlymeStorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CategoryInfo"
.end annotation


# instance fields
.field final mColor:I

.field final mTitle:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;->mTitle:I

    .line 94
    iput p2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;->mColor:I

    return-void
.end method
