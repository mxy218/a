.class Landroid/support/v7/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public getActivityCount()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public getHistorySize()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public setDefaultActivity(I)V
    .registers 2

    const p0, 0x0

    throw p0
.end method
