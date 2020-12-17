.class public Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
.super Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field public final apkFile:Ljava/io/File;

.field public externalSize:J

.field public externalSizeStr:Ljava/lang/String;

.field public hasLauncherEntry:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public final id:J

.field public info:Landroid/content/pm/ApplicationInfo;

.field public internalSize:J

.field public internalSizeStr:Ljava/lang/String;

.field public isHomeApp:Z

.field public label:Ljava/lang/String;

.field public launcherEntryEnabled:Z

.field public mounted:Z

.field public size:J

.field public sizeLoadStart:J

.field public sizeStale:Z

.field public sizeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .line 1574
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;-><init>()V

    .line 1575
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    .line 1576
    iput-wide p3, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    .line 1577
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const-wide/16 p2, -0x1

    .line 1578
    iput-wide p2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const/4 p2, 0x1

    .line 1579
    iput-boolean p2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 1580
    invoke-virtual {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    .registers 6

    .line 1597
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_23

    .line 1598
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1599
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    return v2

    .line 1602
    :cond_17
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    const p2, 0x108085b

    .line 1603
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_3a

    .line 1605
    :cond_23
    iget-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez p1, :cond_3a

    .line 1608
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1609
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1610
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    return v2

    :cond_3a
    :goto_3a
    return v1
.end method

.method public ensureLabel(Landroid/content/Context;)V
    .registers 3

    .line 1584
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v0, :cond_34

    .line 1585
    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 p1, 0x0

    .line 1586
    iput-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1587
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto :goto_34

    :cond_1a
    const/4 v0, 0x1

    .line 1589
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1590
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 1591
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_32

    :cond_2e
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_32
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    :cond_34
    :goto_34
    return-void
.end method
