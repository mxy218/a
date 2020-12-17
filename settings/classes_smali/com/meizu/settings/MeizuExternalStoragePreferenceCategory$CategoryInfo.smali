.class Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;
.super Ljava/lang/Object;
.source "MeizuExternalStoragePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;
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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;->mTitle:I

    .line 74
    iput p2, p0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;->mColor:I

    return-void
.end method
