.class public Lcom/meizu/settings/widget/MzAppEntry;
.super Ljava/lang/Object;
.source "MzAppEntry.java"


# instance fields
.field mApkFile:Ljava/io/File;

.field mContext:Landroid/content/Context;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field public final mInfo:Landroid/content/pm/ApplicationInfo;

.field public mIsLock:Z

.field public mIsRAngleAdjust:Z

.field mLabel:Ljava/lang/String;

.field mLabelToPinyin:Ljava/lang/String;

.field final mLoader:Landroid/content/AsyncTaskLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/AsyncTaskLoader<",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mMounted:Z

.field public final mResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/AsyncTaskLoader;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/AsyncTaskLoader<",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;>;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/ResolveInfo;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/meizu/settings/widget/MzAppEntry;->mLoader:Landroid/content/AsyncTaskLoader;

    .line 28
    iput-object p3, p0, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    iput-object p4, p0, Lcom/meizu/settings/widget/MzAppEntry;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz p3, :cond_16

    .line 31
    iget-object p2, p3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz p2, :cond_16

    .line 32
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/meizu/settings/widget/MzAppEntry;->mApkFile:Ljava/io/File;

    .line 35
    :cond_16
    iput-object p1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mContext:Landroid/content/Context;

    return-void
.end method

.method static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 179
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1c

    goto :goto_21

    .line 180
    :cond_1c
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_21
    return-object p0
.end method

.method private isApkFileExist()Z
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mApkFile:Ljava/io/File;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_41

    .line 67
    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_b

    .line 68
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_15

    .line 69
    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_15

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_15

    .line 70
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 81
    :cond_15
    :goto_15
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzAppEntry;->isApkFileExist()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 82
    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_2c

    .line 83
    iget-object v1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3a

    .line 85
    :cond_2c
    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 89
    :goto_3a
    iget-object p0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_3d
    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mMounted:Z

    goto :goto_7d

    .line 93
    :cond_41
    iget-boolean v1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mMounted:Z

    if-nez v1, :cond_8b

    .line 96
    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4c

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_52

    .line 97
    :cond_4c
    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 107
    :goto_52
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzAppEntry;->isApkFileExist()Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mMounted:Z

    .line 109
    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_6c

    .line 110
    iget-object v1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_7a

    .line 112
    :cond_6c
    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 116
    :goto_7a
    iget-object p0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 122
    :cond_7d
    :goto_7d
    iget-object p0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1080093

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_8b
    return-object v0
.end method

.method public getIconLoaded()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getLabelToPinyin()Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mLabelToPinyin:Ljava/lang/String;

    return-object p0
.end method

.method public loadLabel(Landroid/content/Context;)V
    .registers 6

    .line 136
    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mMounted:Z

    if-nez v0, :cond_79

    .line 137
    :cond_8
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzAppEntry;->isApkFileExist()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 138
    iput-boolean v1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mMounted:Z

    .line 139
    iget-object p1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mLabel:Ljava/lang/String;

    goto :goto_6d

    :cond_18
    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mMounted:Z

    .line 143
    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_28

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_32

    .line 146
    :cond_28
    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_32
    if-eqz v0, :cond_3a

    .line 148
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_60

    .line 149
    :cond_3a
    iget-object v2, p0, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/meizu/settings/widget/MzAppEntry;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 151
    :goto_42
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_60

    .line 152
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_5d

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5d

    goto :goto_60

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_60
    :goto_60
    if-eqz v0, :cond_67

    .line 162
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6b

    :cond_67
    iget-object p1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_6b
    iput-object p1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mLabel:Ljava/lang/String;

    .line 164
    :goto_6d
    invoke-static {}, Lcom/meizu/settings/utils/HanziToPinyin;->getInstance()Lcom/meizu/settings/utils/HanziToPinyin;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/utils/HanziToPinyin;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mLabelToPinyin:Ljava/lang/String;

    :cond_79
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 3

    .line 47
    iput-object p1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mLabel:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/meizu/settings/utils/HanziToPinyin;->getInstance()Lcom/meizu/settings/utils/HanziToPinyin;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/utils/HanziToPinyin;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/MzAppEntry;->mLabelToPinyin:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/meizu/settings/widget/MzAppEntry;->mLabel:Ljava/lang/String;

    return-object p0
.end method
