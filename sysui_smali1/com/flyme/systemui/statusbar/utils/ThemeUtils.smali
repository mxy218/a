.class public Lcom/flyme/systemui/statusbar/utils/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;
    }
.end annotation


# static fields
.field private static mResourceField:Ljava/lang/reflect/Field;


# direct methods
.method public static getImageViewResourceId(Landroid/widget/ImageView;)I
    .registers 2

    .line 42
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->getResourceField()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 45
    :try_start_6
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private static getResourceField()Ljava/lang/reflect/Field;
    .registers 3

    .line 28
    const-class v0, Landroid/widget/ImageView;

    monitor-enter v0

    .line 29
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->mResourceField:Ljava/lang/reflect/Field;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_20

    if-nez v1, :cond_1c

    .line 31
    :try_start_7
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "mResource"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->mResourceField:Ljava/lang/reflect/Field;

    .line 32
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->mResourceField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_17} :catch_18
    .catchall {:try_start_7 .. :try_end_17} :catchall_20

    goto :goto_1c

    :catch_18
    move-exception v1

    .line 34
    :try_start_19
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 37
    :cond_1c
    :goto_1c
    sget-object v1, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->mResourceField:Ljava/lang/reflect/Field;

    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V
    .registers 3

    const/4 v0, 0x0

    .line 122
    invoke-static {p0, p1, v0}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V

    return-void
.end method

.method public static refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V
    .registers 7

    if-eqz p0, :cond_38

    .line 127
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_38

    .line 129
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 130
    instance-of v3, v2, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;

    if-eqz v3, :cond_17

    .line 131
    check-cast v2, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;

    invoke-interface {v2}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;->refreshFont()V

    goto :goto_35

    .line 133
    :cond_17
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2c

    if-eqz p2, :cond_26

    .line 134
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-interface {p2, v3}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;->isHandle(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 135
    :cond_26
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1, p2}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V

    goto :goto_35

    .line 138
    :cond_2c
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_35

    .line 139
    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, p1}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshFont(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_38
    return-void
.end method

.method public static refreshFont(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .registers 2

    if-nez p1, :cond_6

    .line 86
    invoke-static {p0}, Lcom/android/systemui/FontSizeUtils;->restoreTypeface(Landroid/widget/TextView;)V

    goto :goto_9

    .line 88
    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_9
    return-void
.end method

.method public static refreshResource(Landroid/view/ViewGroup;)V
    .registers 5

    if-eqz p0, :cond_37

    .line 55
    instance-of v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;

    if-eqz v0, :cond_c

    .line 56
    move-object v0, p0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;->refreshResource()V

    .line 58
    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_37

    .line 60
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 61
    instance-of v3, v2, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;

    if-eqz v3, :cond_21

    .line 62
    check-cast v2, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;

    invoke-interface {v2}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;->refreshResource()V

    goto :goto_34

    .line 64
    :cond_21
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2b

    .line 65
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshResource(Landroid/view/ViewGroup;)V

    goto :goto_34

    .line 67
    :cond_2b
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_34

    .line 68
    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshResource(Landroid/widget/ImageView;)V

    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_37
    return-void
.end method

.method public static refreshResource(Landroid/widget/ImageView;)V
    .registers 3

    .line 77
    invoke-static {p0}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->getImageViewResourceId(Landroid/widget/ImageView;)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_d
    return-void
.end method

.method public static refreshThemeFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V
    .registers 4

    .line 101
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->hasFlymeTypeface()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x0

    .line 102
    invoke-static {p0, p1, p2}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V

    goto :goto_e

    .line 104
    :cond_b
    invoke-static {p0, p1, p2}, Lcom/flyme/systemui/statusbar/utils/ThemeUtils;->refreshFont(Landroid/view/ViewGroup;Landroid/graphics/Typeface;Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;)V

    :goto_e
    return-void
.end method
