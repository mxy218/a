.class synthetic Landroidx/lifecycle/LifecycleRegistry$1;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LifecycleRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

.field static final synthetic $SwitchMap$androidx$lifecycle$Lifecycle$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 261
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    const/4 v4, 0x5

    :try_start_36
    sget-object v5, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_40} :catch_40

    .line 243
    :catch_40
    invoke-static {}, Landroidx/lifecycle/Lifecycle$Event;->values()[Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    :try_start_49
    sget-object v5, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_53} :catch_53

    :catch_53
    :try_start_53
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v5, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5d
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_67} :catch_67

    :catch_67
    :try_start_67
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_71} :catch_71

    :catch_71
    :try_start_71
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7b
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_86} :catch_86

    :catch_86
    :try_start_86
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_91} :catch_91

    :catch_91
    return-void
.end method
