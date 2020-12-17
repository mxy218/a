.class public Lcom/meizu/common/pps/Consts$AppType;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/pps/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppType"
.end annotation


# static fields
.field public static final BAD_CPU:I = 0x10000000

.field public static final BAD_CPU_NAME:Ljava/lang/String; = "badcpu"

.field public static final BAD_IO:I = 0x20000000

.field public static final BAD_IO_NAME:Ljava/lang/String; = "badio"

.field public static final BAD_MEM:I = 0x8000000

.field public static final BAD_MEM_NAME:Ljava/lang/String; = "badmem"

.field public static final BAD_NET:I = 0x40000000

.field public static final BAD_NET_NAME:Ljava/lang/String; = "badnet"

.field public static final BAD_POWER:I = 0x4000000

.field public static final BAD_POWER_NAME:Ljava/lang/String; = "badpower"

.field public static final CORE:I = 0x100

.field public static final CORE_NAME:Ljava/lang/String; = "core"

.field public static final DEFAULT_DIALER:I = 0x40

.field public static final DEFAULT_DIALER_NAME:Ljava/lang/String; = "dialer"

.field public static final DEFAULT_MMS:I = 0x20

.field public static final DEFAULT_MMS_NAME:Ljava/lang/String; = "mms"

.field public static final FAVORITE:I = 0x1000

.field public static final FAVORITE_NAME:Ljava/lang/String; = "favorite"

.field public static final FREEZE_MUSIC:I = 0x200000

.field public static final FREEZE_MUSIC_NAME:Ljava/lang/String; = "freezemusic"

.field public static final GAME_APP:I = 0x100000

.field public static final GAME_APP_NAME:Ljava/lang/String; = "game"

.field public static final HOME:I = 0x20000

.field public static final HOME_NAME:Ljava/lang/String; = "home"

.field public static final IGNORE:I = 0x40000

.field public static final IGNORE_NAME:Ljava/lang/String; = "ignore"

.field public static final INPUT_METHOD:I = 0x10

.field public static final INPUT_METHOD_NAME:Ljava/lang/String; = "inputmethod"

.field public static final LESS_USE:I = 0x1000000

.field public static final LESS_USE_NAME:Ljava/lang/String; = "lessuse"

.field public static final NONE:I = 0x0

.field public static final NORMAL_WHITE:I = 0x1

.field public static final NORMAL_WHITE_NAME:Ljava/lang/String; = "normal"

.field public static final NOTIFICATION:I = 0x4000

.field public static final NOTIFICATION_NAME:Ljava/lang/String; = "notification"

.field public static final RECENT:I = 0x80

.field public static final RECENT_NAME:Ljava/lang/String; = "recent"

.field public static final SUPER_BLACK:I = 0x800000

.field public static final SUPER_BLACK_NAME:Ljava/lang/String; = "superblack"

.field public static final SUPER_WHITE:I = 0x8000

.field public static final SUPER_WHITE_NAME:Ljava/lang/String; = "super"

.field public static final SYSTEM:I = 0x4

.field public static final SYSTEM_BLACK:I = 0x400000

.field public static final SYSTEM_BLACK_NAME:Ljava/lang/String; = "systemblack"

.field public static final SYSTEM_NAME:Ljava/lang/String; = "system"

.field public static final TYPE_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_DISALLOW:I = 0x2000000

.field public static final USER_DISALLOW_NAME:Ljava/lang/String; = "disallow"

.field public static final USER_LOCKED0:I = 0x200

.field public static final USER_LOCKED1:I = 0x400

.field public static final USER_LOCKED_NAME0:Ljava/lang/String; = "locked0"

.field public static final USER_LOCKED_NAME1:Ljava/lang/String; = "locked1"

.field public static final USER_SELECTED:I = 0x800

.field public static final USER_SELECTED_NAME:Ljava/lang/String; = "selected"

.field public static final VISIBLE:I = 0x10000

.field public static final VISIBLE_NAME:Ljava/lang/String; = "visible"

.field public static final WIDGET:I = 0x8

.field public static final WIDGET_NAME:Ljava/lang/String; = "widget"

.field public static final WORKING:I = 0x2000

.field public static final WORKING_NAME:Ljava/lang/String; = "working"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    .line 125
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "widget"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x10

    const-string v2, "inputmethod"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x20

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x40

    const-string v2, "dialer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "system"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x100

    const-string v2, "core"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x80

    const-string v2, "recent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x200

    const-string v2, "locked0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x400

    const-string v2, "locked1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x800

    const-string v2, "selected"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x1000

    const-string v2, "favorite"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x2000

    const-string v2, "working"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const v1, 0x8000

    const-string v2, "super"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x10000

    const-string v2, "visible"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x20000

    const-string v2, "home"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x40000

    const-string v2, "ignore"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x4000

    const-string v2, "notification"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x1000000

    const-string v2, "lessuse"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x2000000

    const-string v2, "disallow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x4000000

    const-string v2, "badpower"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x8000000

    const-string v2, "badmem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x10000000

    const-string v2, "badcpu"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x20000000

    const-string v2, "badio"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x40000000  # 2.0f

    const-string v2, "badnet"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x400000

    const-string v2, "systemblack"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x800000

    const-string v2, "superblack"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x200000

    const-string v2, "freezemusic"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    sget-object v0, Lcom/meizu/common/pps/Consts$AppType;->TYPE_NAMES:Landroid/util/SparseArray;

    const/high16 v1, 0x100000

    const-string v2, "game"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
