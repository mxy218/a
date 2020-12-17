.class Lcom/android/settingslib/applications/ApplicationsState$16;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHidePackageNames:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .registers 3

    .line 1866
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$16;->mHidePackageNames:[Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 1867
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_14

    return v0

    .line 1869
    :cond_14
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_1a

    return v0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 1856
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107003f

    .line 1857
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$16;->mHidePackageNames:[Ljava/lang/String;

    return-void
.end method
