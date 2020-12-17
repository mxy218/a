.class public Lflyme/support/v7/util/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# static fields
.field public static mStateSavedField:Ljava/lang/reflect/Field;

.field public static mSupportStateSavedField:Ljava/lang/reflect/Field;


# direct methods
.method private static checkStateSavedField(Ljava/lang/Object;Z)V
    .registers 4

    if-eqz p1, :cond_6

    .line 51
    sget-object v0, Lflyme/support/v7/util/ReflectUtils;->mSupportStateSavedField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_c

    :cond_6
    if-nez p1, :cond_d

    sget-object v0, Lflyme/support/v7/util/ReflectUtils;->mStateSavedField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    const/4 v0, 0x0

    .line 55
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "mStateSaved"

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 p0, 0x1

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21
    if-eqz p1, :cond_26

    .line 61
    sput-object v0, Lflyme/support/v7/util/ReflectUtils;->mSupportStateSavedField:Ljava/lang/reflect/Field;

    goto :goto_28

    .line 62
    :cond_26
    sput-object v0, Lflyme/support/v7/util/ReflectUtils;->mStateSavedField:Ljava/lang/reflect/Field;

    :goto_28
    return-void
.end method

.method public static getFragmentsStateSavedValue(Ljava/lang/Object;)I
    .registers 4

    .line 19
    instance-of v0, p0, Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 20
    :goto_9
    invoke-static {p0, v0}, Lflyme/support/v7/util/ReflectUtils;->checkStateSavedField(Ljava/lang/Object;Z)V

    if-eqz v0, :cond_11

    .line 23
    :try_start_e
    sget-object v0, Lflyme/support/v7/util/ReflectUtils;->mSupportStateSavedField:Ljava/lang/reflect/Field;

    goto :goto_13

    :cond_11
    sget-object v0, Lflyme/support/v7/util/ReflectUtils;->mStateSavedField:Ljava/lang/reflect/Field;

    .line 24
    :goto_13
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_1b

    if-eqz p0, :cond_1a

    return v1

    :cond_1a
    return v2

    :catch_1b
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static setFragmentsStateSavedValue(Ljava/lang/Object;Z)V
    .registers 3

    .line 39
    instance-of v0, p0, Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 40
    :goto_7
    invoke-static {p0, v0}, Lflyme/support/v7/util/ReflectUtils;->checkStateSavedField(Ljava/lang/Object;Z)V

    if-eqz v0, :cond_f

    .line 43
    :try_start_c
    sget-object v0, Lflyme/support/v7/util/ReflectUtils;->mSupportStateSavedField:Ljava/lang/reflect/Field;

    goto :goto_11

    :cond_f
    sget-object v0, Lflyme/support/v7/util/ReflectUtils;->mStateSavedField:Ljava/lang/reflect/Field;

    .line 44
    :goto_11
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_19
    return-void
.end method
