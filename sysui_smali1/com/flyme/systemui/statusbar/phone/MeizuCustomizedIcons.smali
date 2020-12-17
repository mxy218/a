.class public final Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;
.super Ljava/lang/Object;
.source "MeizuCustomizedIcons.java"


# static fields
.field private static mIcons:Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;


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

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->internal_app_icon_names:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$array;->internal_app_icon_values:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 48
    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_28
    if-ge v4, v1, :cond_33

    .line 50
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 52
    :cond_33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    :goto_36
    array-length p1, v0

    if-ge v3, p1, :cond_83

    .line 54
    aget-object p1, v0, v3

    .line 55
    aget v1, v2, v3

    if-eqz v1, :cond_6c

    .line 56
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 57
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 59
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " icon is repeat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " icon is not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    return-void
.end method

.method public static getIcons(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;
    .registers 3

    .line 35
    const-class v0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->mIcons:Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    if-nez v1, :cond_e

    .line 37
    new-instance v1, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->mIcons:Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    .line 39
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 40
    sget-object p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->mIcons:Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    return-object p0

    :catchall_12
    move-exception p0

    .line 39
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method public getMeizuCustomizedIcon(Ljava/lang/String;I)I
    .registers 4

    .line 76
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->isMeizuCustomizedIcon(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_12
    return p2
.end method

.method public isMeizuCustomizedIcon(Ljava/lang/String;)Z
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

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
