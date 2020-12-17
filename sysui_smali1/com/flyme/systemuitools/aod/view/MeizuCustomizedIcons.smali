.class public final Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;
.super Ljava/lang/Object;
.source "MeizuCustomizedIcons.java"


# static fields
.field private static final mAppInternalMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mIcons:Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;

.field private static mInternalAppBlackList:[Ljava/lang/String;

.field private static mInternalAppWhiteList:[Ljava/lang/String;


# instance fields
.field final MZ_CUSTOMIZED_ICONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private SYSTEMUI_PACKAGE:Ljava/lang/String;

.field private mInternalAppBlackId:I

.field private mInternalAppInit:Z

.field private mInternalAppWhiteId:I

.field private mInternalAppiconNamesId:I

.field private mInternalAppiconValuesId:I

.field private mSystemUIResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mAppInternalMap:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-string v0, "array"

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    const-string v1, "com.android.systemui"

    .line 27
    iput-object v1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->SYSTEMUI_PACKAGE:Ljava/lang/String;

    .line 45
    sput-object p1, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mContext:Landroid/content/Context;

    .line 48
    :try_start_12
    sget-object p1, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->SYSTEMUI_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mSystemUIResources:Landroid/content/res/Resources;

    .line 49
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mSystemUIResources:Landroid/content/res/Resources;

    const-string v1, "internal_app_icon_names"

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->SYSTEMUI_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppiconNamesId:I

    .line 50
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mSystemUIResources:Landroid/content/res/Resources;

    const-string v1, "internal_app_icon_values"

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->SYSTEMUI_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppiconValuesId:I

    .line 51
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mSystemUIResources:Landroid/content/res/Resources;

    const-string v1, "internal_app_white"

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->SYSTEMUI_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppWhiteId:I

    .line 52
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mSystemUIResources:Landroid/content/res/Resources;

    const-string v1, "internal_app_black"

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->SYSTEMUI_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppBlackId:I
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception p1

    .line 54
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 57
    :goto_55
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mSystemUIResources:Landroid/content/res/Resources;

    iget v0, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppiconNamesId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mSystemUIResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppiconValuesId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 60
    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_6d
    if-ge v4, v1, :cond_78

    .line 62
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    .line 64
    :cond_78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    :goto_7b
    array-length v0, p1

    if-ge v3, v0, :cond_c8

    .line 66
    aget-object v0, p1, v3

    .line 67
    aget v1, v2, v3

    if-eqz v1, :cond_b1

    .line 68
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 69
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 71
    :cond_9a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " icon is repeat"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_b1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " icon is not exist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c8
    return-void
.end method

.method private static containsInArray([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 128
    array-length v1, p0

    if-lez v1, :cond_17

    .line 129
    array-length v1, p0

    move v2, v0

    :goto_8
    if-ge v2, v1, :cond_17

    aget-object v3, p0, v2

    .line 130
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    return v0
.end method

.method public static getIcons(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;
    .registers 3

    .line 35
    const-class v0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mIcons:Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;

    if-nez v1, :cond_e

    .line 37
    new-instance v1, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;

    invoke-direct {v1, p0}, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mIcons:Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;

    .line 39
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_14

    .line 40
    sput-object p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mContext:Landroid/content/Context;

    .line 41
    sget-object p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mIcons:Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;

    return-object p0

    :catchall_14
    move-exception p0

    .line 39
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method


# virtual methods
.method public getDrawableById(I)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 139
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mSystemUIResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getMeizuCustomizedIcon(Ljava/lang/String;)I
    .registers 3

    .line 84
    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->isMeizuCustomizedIcon(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public isInternalApp(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p1, :cond_81

    .line 93
    sget-object v2, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 94
    sget-object p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 96
    :cond_1c
    iget-boolean v2, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppInit:Z

    const/4 v3, 0x1

    if-nez v2, :cond_37

    .line 97
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mSystemUIResources:Landroid/content/res/Resources;

    iget v4, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppWhiteId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppWhiteList:[Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mSystemUIResources:Landroid/content/res/Resources;

    iget v4, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppBlackId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppBlackList:[Ljava/lang/String;

    .line 99
    iput-boolean v3, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppInit:Z

    .line 101
    :cond_37
    sget-object p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppWhiteList:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->containsInArray([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_49

    .line 102
    sget-object p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    .line 106
    :cond_49
    :try_start_49
    sget-object p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_81

    .line 108
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p0, v3

    if-eqz p0, :cond_72

    .line 109
    sget-object p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mInternalAppBlackList:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->containsInArray([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_68

    .line 110
    sget-object p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 112
    :cond_68
    sget-object p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    .line 116
    :cond_72
    sget-object p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catchall {:try_start_49 .. :try_end_77} :catchall_78

    goto :goto_81

    :catchall_78
    move-exception p0

    .line 120
    sget-object v2, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->mAppInternalMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_81
    :goto_81
    return v0
.end method

.method public isMeizuCustomizedIcon(Ljava/lang/String;)Z
    .registers 2

    .line 80
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
