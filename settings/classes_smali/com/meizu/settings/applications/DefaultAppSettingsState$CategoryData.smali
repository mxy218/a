.class public Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;
.super Ljava/lang/Object;
.source "DefaultAppSettingsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/DefaultAppSettingsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryData"
.end annotation


# instance fields
.field public appInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

.field public dateType:I

.field public defaultIcon:Landroid/graphics/drawable/Drawable;

.field public defaultPackage:Ljava/lang/String;

.field public defaultResolveInfo:Landroid/content/pm/ResolveInfo;

.field public defaultSummary:Ljava/lang/String;

.field public intentAndResolvinfoLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$IntentAndResolvinfoList;",
            ">;"
        }
    .end annotation
.end field

.field public systemResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
