.class public Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "MeizuExternalStoragePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;
    }
.end annotation


# static fields
.field static final sCategoryInfos:[Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;

    .line 78
    new-instance v1, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;

    const v2, 0x7f120caa

    const v3, 0x7f060163

    invoke-direct {v1, v2, v3}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;

    const v2, 0x7f120c8f

    const v3, 0x7f06015f

    invoke-direct {v1, v2, v3}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->sCategoryInfos:[Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory$CategoryInfo;

    return-void
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/VolumeInfo;
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public setMountingPreferenceView(Z)V
    .registers 2

    const p0, 0x0

    throw p0
.end method
