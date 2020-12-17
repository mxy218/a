.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.source "ImmLeaksCleaner.java"

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation


# static fields
.field private static sHField:Ljava/lang/reflect/Field;

.field private static sNextServedViewField:Ljava/lang/reflect/Field;

.field private static sReflectedFieldsInitialized:I

.field private static sServedViewField:Ljava/lang/reflect/Field;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private static initializeReflectiveFields()V
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x2

    .line 100
    :try_start_1
    sput v0, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    .line 101
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "mServedView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->sServedViewField:Ljava/lang/reflect/Field;

    .line 102
    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->sServedViewField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "mNextServedView"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->sNextServedViewField:Ljava/lang/reflect/Field;

    .line 104
    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->sNextServedViewField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 105
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "mH"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->sHField:Ljava/lang/reflect/Field;

    .line 106
    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->sHField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 107
    sput v1, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I
    :try_end_33
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    .line 50
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-eq p2, p1, :cond_5

    return-void

    .line 53
    :cond_5
    sget p1, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    if-nez p1, :cond_c

    .line 54
    invoke-static {}, Landroidx/activity/ImmLeaksCleaner;->initializeReflectiveFields()V

    .line 56
    :cond_c
    sget p1, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4e

    .line 57
    iget-object p0, p0, Landroidx/activity/ImmLeaksCleaner;->mActivity:Landroid/app/Activity;

    const-string p1, "input_method"

    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 61
    :try_start_1b
    sget-object p1, Landroidx/activity/ImmLeaksCleaner;->sHField:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_21} :catch_4e

    if-nez p1, :cond_24

    return-void

    .line 68
    :cond_24
    monitor-enter p1

    .line 71
    :try_start_25
    sget-object p2, Landroidx/activity/ImmLeaksCleaner;->sServedViewField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_2d} :catch_4a
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_2d} :catch_48
    .catchall {:try_start_25 .. :try_end_2d} :catchall_46

    if-nez p2, :cond_31

    .line 78
    :try_start_2f
    monitor-exit p1

    return-void

    .line 80
    :cond_31
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_39

    .line 81
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_46

    return-void

    .line 86
    :cond_39
    :try_start_39
    sget-object p2, Landroidx/activity/ImmLeaksCleaner;->sNextServedViewField:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_3f} :catch_44
    .catchall {:try_start_39 .. :try_end_3f} :catchall_46

    .line 90
    :try_start_3f
    monitor-exit p1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_46

    .line 93
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    goto :goto_4e

    .line 88
    :catch_44
    :try_start_44
    monitor-exit p1

    return-void

    :catchall_46
    move-exception p0

    goto :goto_4c

    .line 75
    :catch_48
    monitor-exit p1

    return-void

    .line 73
    :catch_4a
    monitor-exit p1

    return-void

    .line 90
    :goto_4c
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_46

    throw p0

    :catch_4e
    :cond_4e
    :goto_4e
    return-void
.end method
