.class Lcom/meizu/settings/applications/ApplicationsState$1;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)I
    .registers 5

    .line 1788
    iget-object p0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->lableToPinyin:Ljava/lang/String;

    .line 1789
    iget-object v0, p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->lableToPinyin:Ljava/lang/String;

    .line 1791
    iget-object v1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz v1, :cond_15

    iget-object v1, p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz v1, :cond_15

    .line 1792
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1793
    :cond_15
    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_1d

    return v1

    .line 1795
    :cond_1d
    iget-object p1, p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_25

    return p2

    .line 1798
    :cond_25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_36

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_36

    .line 1799
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1800
    :cond_36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3d

    return p2

    .line 1802
    :cond_3d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_44

    return v1

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1786
    check-cast p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    check-cast p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/applications/ApplicationsState$1;->compare(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)I

    move-result p0

    return p0
.end method
