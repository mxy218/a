.class public Lcom/meizu/settings/applications/ApplicationsState$AppEntry;
.super Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field public apkFile:Ljava/io/File;

.field public externalSize:J

.field public externalSizeStr:Ljava/lang/String;

.field public extraInfo:Ljava/lang/Object;

.field public hasLauncherEntry:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public final id:J

.field public info:Landroid/content/pm/ApplicationInfo;

.field public internalSize:J

.field public internalSizeStr:Ljava/lang/String;

.field public isCategory:Z

.field public label:Ljava/lang/String;

.field public lableToPinyin:Ljava/lang/String;

.field mAppIconMemoryOptimizeHelper:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

.field mIsSystemAppInstalling:Z

.field public mounted:Z

.field public normalizedLabel:Ljava/lang/String;

.field public size:J

.field public sizeLoadStart:J

.field public sizeStale:Z

.field public sizeStr:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;JZ)V
    .registers 8

    .line 1637
    invoke-direct {p0}, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;-><init>()V

    .line 1638
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    .line 1639
    iput-wide p3, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->id:J

    .line 1640
    iput-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const-wide/16 p3, -0x1

    .line 1641
    iput-wide p3, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->size:J

    const/4 p3, 0x1

    .line 1642
    iput-boolean p3, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 1643
    iput-boolean p5, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->isCategory:Z

    .line 1644
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 1647
    invoke-static {p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mAppIconMemoryOptimizeHelper:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    const/4 p1, 0x0

    .line 1650
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mIsSystemAppInstalling:Z

    .line 1651
    iget-boolean p1, p2, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz p1, :cond_6b

    .line 1653
    sget-object p1, Lcom/meizu/settings/applications/ApplicationsState;->mInstallingPackages:Ljava/util/List;

    monitor-enter p1

    .line 1654
    :try_start_2c
    sget-object p4, Lcom/meizu/settings/applications/ApplicationsState;->mInstallingPackages:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_32
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_66

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 1655
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_32

    .line 1656
    iput-boolean p3, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mIsSystemAppInstalling:Z

    const-string p0, "ApplicationsState"

    .line 1657
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "package "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is installing "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_66
    monitor-exit p1

    goto :goto_6b

    :catchall_68
    move-exception p0

    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_2c .. :try_end_6a} :catchall_68

    throw p0

    :cond_6b
    :goto_6b
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JZ)V
    .registers 5

    .line 1631
    invoke-direct {p0}, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;-><init>()V

    .line 1632
    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->title:Ljava/lang/String;

    .line 1633
    iput-wide p2, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->id:J

    .line 1634
    iput-boolean p4, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->isCategory:Z

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .registers 3

    .line 1580
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->updateUninstalledSystemAppInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method private updateUninstalledSystemAppInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .registers 5

    .line 1733
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz v0, :cond_35

    .line 1734
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->size:J

    .line 1735
    iget-wide v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-static {p1, v0, v1}, Lcom/meizu/settings/utils/MzUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    .line 1737
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 1738
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_35

    .line 1739
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1740
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_35

    .line 1741
    iget-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mAppIconMemoryOptimizeHelper:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_35
    return-void
.end method


# virtual methods
.method ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    .registers 6

    .line 1692
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    if-eqz v0, :cond_48

    .line 1693
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1697
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz v0, :cond_34

    .line 1698
    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 1699
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_3b

    .line 1700
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1701
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_3b

    .line 1702
    iget-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mAppIconMemoryOptimizeHelper:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1703
    invoke-virtual {p2, p0, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3b

    .line 1707
    :cond_34
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mAppIconMemoryOptimizeHelper:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->scaleIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    :cond_3b
    :goto_3b
    return v2

    .line 1712
    :cond_3c
    iput-boolean v1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    const p2, 0x108085b

    .line 1713
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_62

    .line 1716
    :cond_48
    iget-boolean p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez p1, :cond_62

    .line 1719
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    if-eqz p1, :cond_62

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 1720
    iput-boolean v2, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1723
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mAppIconMemoryOptimizeHelper:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->scaleIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    return v2

    :cond_62
    :goto_62
    return v1
.end method

.method public ensureLabel(Landroid/content/Context;)V
    .registers 3

    .line 1670
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v0, :cond_48

    .line 1671
    :cond_8
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 p1, 0x0

    .line 1672
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1675
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-nez p1, :cond_3c

    .line 1676
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto :goto_3c

    :cond_1e
    const/4 v0, 0x1

    .line 1680
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1681
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1684
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3a

    :cond_36
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_3a
    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 1687
    :cond_3c
    :goto_3c
    invoke-static {}, Lcom/meizu/settings/utils/HanziToPinyin;->getInstance()Lcom/meizu/settings/utils/HanziToPinyin;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/utils/HanziToPinyin;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->lableToPinyin:Ljava/lang/String;

    :cond_48
    return-void
.end method

.method public getNormalizedLabel()Ljava/lang/String;
    .registers 2

    .line 1602
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 1605
    :cond_5
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    .line 1606
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 1666
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->title:Ljava/lang/String;

    return-object p0
.end method
