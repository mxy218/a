.class final Lcom/android/server/display/OverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_HEIGHT:I = 0x1000

.field private static final MAX_WIDTH:I = 0x1000

.field private static final MIN_HEIGHT:I = 0x64

.field private static final MIN_WIDTH:I = 0x64

.field private static final MODE_PATTERN:Ljava/util/regex/Pattern;

.field static final TAG:Ljava/lang/String; = "OverlayDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "overlay:"


# instance fields
.field private mCurrentOverlaySetting:Ljava/lang/String;

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    nop

    .line 79
    const-string v0, "([^,]+)(,[a-z]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    .line 80
    nop

    .line 81
    const-string v0, "(\\d+)x(\\d+)/(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .registers 12

    .line 94
    const-string v5, "OverlayDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 89
    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/OverlayDisplayAdapter;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static chooseOverlayGravity(I)I
    .registers 2

    .line 209
    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    .line 218
    const/16 p0, 0x53

    return p0

    .line 215
    :cond_c
    const/16 p0, 0x35

    return p0

    .line 213
    :cond_f
    const/16 p0, 0x55

    return p0

    .line 211
    :cond_12
    const/16 p0, 0x33

    return p0
.end method

.method private updateOverlayDisplayDevices()V
    .registers 3

    .line 131
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 132
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private updateOverlayDisplayDevicesLocked()V
    .registers 18

    .line 137
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-nez v0, :cond_17

    .line 140
    const-string v0, ""

    move-object v9, v0

    goto :goto_18

    .line 139
    :cond_17
    move-object v9, v0

    .line 143
    :goto_18
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 144
    return-void

    .line 146
    :cond_21
    iput-object v9, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 148
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v10, "OverlayDisplayAdapter"

    if-nez v0, :cond_4d

    .line 149
    const-string v0, "Dismissing all overlay display devices."

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 151
    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    .line 152
    goto :goto_38

    .line 153
    :cond_48
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    :cond_4d
    nop

    .line 157
    const-string v0, ";"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_57
    if-ge v14, v12, :cond_1a2

    aget-object v0, v11, v14

    .line 158
    sget-object v2, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 160
    const/4 v2, 0x4

    if-lt v1, v2, :cond_80

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many overlay display devices specified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    goto/16 :goto_1a2

    .line 164
    :cond_80
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 166
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 167
    const-string v0, "\\|"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    const/4 v15, 0x0

    :goto_97
    if-ge v15, v7, :cond_114

    aget-object v0, v3, v15

    .line 168
    sget-object v13, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 169
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_105

    .line 171
    :try_start_a7
    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xa

    invoke-static {v4, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_a7 .. :try_end_b1} :catch_101

    .line 172
    move-object/from16 v16, v3

    const/4 v2, 0x2

    :try_start_b4
    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 173
    const/4 v2, 0x3

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0xa

    invoke-static {v2, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 174
    const/16 v13, 0x64

    if-lt v4, v13, :cond_ea

    const/16 v13, 0x1000

    if-gt v4, v13, :cond_ea

    const/16 v13, 0x64

    if-lt v3, v13, :cond_ea

    const/16 v13, 0x1000

    if-gt v3, v13, :cond_ea

    const/16 v13, 0x78

    if-lt v2, v13, :cond_ea

    const/16 v13, 0x280

    if-gt v2, v13, :cond_ea

    .line 178
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    invoke-direct {v0, v4, v3, v2}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;-><init>(III)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    goto :goto_10d

    .line 181
    :cond_ea
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring out-of-range overlay display mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catch Ljava/lang/NumberFormatException; {:try_start_b4 .. :try_end_fe} :catch_ff

    goto :goto_104

    .line 183
    :catch_ff
    move-exception v0

    goto :goto_104

    :catch_101
    move-exception v0

    move-object/from16 v16, v3

    .line 184
    :goto_104
    goto :goto_10d

    .line 185
    :cond_105
    move-object/from16 v16, v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 167
    :cond_10d
    :goto_10d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v16

    const/4 v2, 0x1

    const/4 v4, 0x2

    goto :goto_97

    .line 189
    :cond_114
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18a

    .line 190
    add-int/lit8 v0, v1, 0x1

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040205

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v4, v13

    .line 191
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->chooseOverlayGravity(I)I

    move-result v7

    .line 195
    if-eqz v5, :cond_145

    const-string v1, ",secure"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_145

    move v15, v3

    goto :goto_146

    :cond_145
    move v15, v13

    .line 197
    :goto_146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing overlay display device #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v10, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v5, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v13, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v5

    move v5, v7

    move-object v7, v6

    move v6, v15

    move-object v15, v7

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;IZI)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    move v1, v0

    goto :goto_19e

    .line 204
    :cond_18a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed overlay display devices setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_19e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_57

    .line 206
    :cond_1a2
    :goto_1a2
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 100
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentOverlaySetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverlays: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 105
    invoke-virtual {v1, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 106
    goto :goto_39

    .line 107
    :cond_49
    return-void
.end method

.method public registerLocked()V
    .registers 3

    .line 111
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 113
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method
