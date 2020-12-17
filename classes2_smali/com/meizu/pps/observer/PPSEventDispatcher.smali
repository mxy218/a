.class public Lcom/meizu/pps/observer/PPSEventDispatcher;
.super Ljava/lang/Object;
.source "PPSEventDispatcher.java"

# interfaces
.implements Lcom/meizu/common/pps/event/IProcessEventCallback;
.implements Lcom/meizu/common/pps/event/ISystemEventCallback;
.implements Lcom/meizu/common/pps/event/IUEventCallback;
.implements Lcom/meizu/common/pps/event/IDataCollectEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/pps/observer/PPSEventDispatcher$Instance;
    }
.end annotation


# static fields
.field public static sPPSEventDispatcher:Lcom/meizu/pps/observer/PPSEventDispatcher;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Lcom/meizu/common/pps/event/Int4String3Args;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/meizu/common/pps/event/ArgsFactory;->addClass(Ljava/lang/Class;I)V

    .line 48
    const-class v0, Lcom/meizu/common/pps/event/Int1IntArray2Args;

    invoke-static {v0, v1}, Lcom/meizu/common/pps/event/ArgsFactory;->addClass(Ljava/lang/Class;I)V

    .line 49
    const-class v0, Lcom/meizu/common/pps/event/Int1Args;

    invoke-static {v0, v1}, Lcom/meizu/common/pps/event/ArgsFactory;->addClass(Ljava/lang/Class;I)V

    .line 50
    const-class v0, Lcom/meizu/common/pps/event/Int1String1Args;

    invoke-static {v0, v1}, Lcom/meizu/common/pps/event/ArgsFactory;->addClass(Ljava/lang/Class;I)V

    .line 51
    const-class v0, Lcom/meizu/common/pps/event/Int2Args;

    invoke-static {v0, v1}, Lcom/meizu/common/pps/event/ArgsFactory;->addClass(Ljava/lang/Class;I)V

    .line 52
    const-class v0, Lcom/meizu/common/pps/event/Int3Args;

    invoke-static {v0, v1}, Lcom/meizu/common/pps/event/ArgsFactory;->addClass(Ljava/lang/Class;I)V

    .line 53
    const-class v0, Lcom/meizu/common/pps/event/IntArray2Args;

    invoke-static {v0, v1}, Lcom/meizu/common/pps/event/ArgsFactory;->addClass(Ljava/lang/Class;I)V

    .line 54
    const-class v0, Lcom/meizu/common/pps/event/IntArrayArgs;

    invoke-static {v0, v1}, Lcom/meizu/common/pps/event/ArgsFactory;->addClass(Ljava/lang/Class;I)V

    .line 55
    const-class v0, Lcom/meizu/common/pps/event/Int1StringList1Args;

    invoke-static {v0, v1}, Lcom/meizu/common/pps/event/ArgsFactory;->addClass(Ljava/lang/Class;I)V

    .line 56
    const-class v0, Lcom/meizu/common/pps/event/IntArray2StringArray1Args;

    invoke-static {v0, v1}, Lcom/meizu/common/pps/event/ArgsFactory;->addClass(Ljava/lang/Class;I)V

    .line 57
    const-class v0, Lcom/meizu/common/pps/event/Long3String1Args;

    invoke-static {v0, v1}, Lcom/meizu/common/pps/event/ArgsFactory;->addClass(Ljava/lang/Class;I)V

    .line 58
    const-class v0, Lcom/meizu/common/pps/event/Long2String1Args;

    invoke-static {v0, v1}, Lcom/meizu/common/pps/event/ArgsFactory;->addClass(Ljava/lang/Class;I)V

    .line 59
    const-class v0, Lcom/meizu/common/pps/event/Long1String1Float1Args;

    invoke-static {v0, v1}, Lcom/meizu/common/pps/event/ArgsFactory;->addClass(Ljava/lang/Class;I)V

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/pps/observer/PPSEventDispatcher$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/meizu/pps/observer/PPSEventDispatcher$1;

    .line 40
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;
    .registers 1

    .line 63
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher$Instance;->access$100()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V
    .registers 11
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "id"  # I
    .param p4, "process"  # Ljava/lang/String;
    .param p5, "pid"  # I
    .param p6, "flags"  # I
    .param p7, "reason"  # Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 70
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    invoke-virtual/range {p0 .. p7}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newInt4String3Args(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)Lcom/meizu/common/pps/event/Int4String3Args;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSServer;->scheduleProcessEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 72
    return-void
.end method

.method public addAppLaunchTime(JLjava/lang/String;JJ)V
    .registers 11
    .param p1, "eventTime"  # J
    .param p3, "componetName"  # Ljava/lang/String;
    .param p4, "thisTime"  # J
    .param p6, "totalTime"  # J

    .line 151
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 152
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p7}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newLong3String1Args(JLjava/lang/String;JJ)Lcom/meizu/common/pps/event/Long3String1Args;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSServer;->scheduleDataCollectEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 153
    return-void
.end method

.method public addFps(JLjava/lang/String;F)V
    .registers 8
    .param p1, "eventTime"  # J
    .param p3, "pkgName"  # Ljava/lang/String;
    .param p4, "fps"  # F

    .line 163
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 164
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newLong1String1Float1Args(JLjava/lang/String;F)Lcom/meizu/common/pps/event/Long1String1Float1Args;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSServer;->scheduleDataCollectEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 165
    return-void
.end method

.method public addSkippedFrame(JLjava/lang/String;J)V
    .registers 9
    .param p1, "eventTime"  # J
    .param p3, "pkgName"  # Ljava/lang/String;
    .param p4, "skippedFrame"  # J

    .line 157
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 158
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p5}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newLong2String1Args(JLjava/lang/String;J)Lcom/meizu/common/pps/event/Long2String1Args;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSServer;->scheduleDataCollectEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 159
    return-void
.end method

.method public doInit(Lcom/meizu/common/pps/event/Args;)V
    .registers 4
    .param p1, "data"  # Lcom/meizu/common/pps/event/Args;

    .line 116
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 117
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/meizu/pps/observer/PPSServer;->scheduleSystemEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 118
    return-void
.end method

.method public isConnected()Z
    .registers 2

    .line 169
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/pps/observer/PPSServer;->isConnected()Z

    move-result v0

    return v0
.end method

.method public newInt1IntArray2Args(I[I[I)Lcom/meizu/common/pps/event/Int1IntArray2Args;
    .registers 5
    .param p1, "int0"  # I
    .param p2, "int1"  # [I
    .param p3, "int2"  # [I

    .line 229
    const-class v0, Lcom/meizu/common/pps/event/Int1IntArray2Args;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/Int1IntArray2Args;

    .line 230
    .local v0, "args":Lcom/meizu/common/pps/event/Int1IntArray2Args;
    iput p1, v0, Lcom/meizu/common/pps/event/Int1IntArray2Args;->mInt0:I

    .line 231
    iput-object p2, v0, Lcom/meizu/common/pps/event/Int1IntArray2Args;->mIntArray0:[I

    .line 232
    iput-object p3, v0, Lcom/meizu/common/pps/event/Int1IntArray2Args;->mIntArray1:[I

    .line 233
    return-object v0
.end method

.method public newInt1String1Args(ILjava/lang/String;)Lcom/meizu/common/pps/event/Int1String1Args;
    .registers 4
    .param p1, "int0"  # I
    .param p2, "str0"  # Ljava/lang/String;

    .line 185
    const-class v0, Lcom/meizu/common/pps/event/Int1String1Args;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/Int1String1Args;

    .line 186
    .local v0, "args":Lcom/meizu/common/pps/event/Int1String1Args;
    iput p1, v0, Lcom/meizu/common/pps/event/Int1String1Args;->mInt0:I

    .line 187
    iput-object p2, v0, Lcom/meizu/common/pps/event/Int1String1Args;->mString0:Ljava/lang/String;

    .line 188
    return-object v0
.end method

.method public newInt1StringArray1Args(ILjava/util/ArrayList;)Lcom/meizu/common/pps/event/Int1StringList1Args;
    .registers 4
    .param p1, "int0"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/meizu/common/pps/event/Int1StringList1Args;"
        }
    .end annotation

    .line 237
    .local p2, "array0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v0, Lcom/meizu/common/pps/event/Int1StringList1Args;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/Int1StringList1Args;

    .line 238
    .local v0, "args":Lcom/meizu/common/pps/event/Int1StringList1Args;
    iput p1, v0, Lcom/meizu/common/pps/event/Int1StringList1Args;->mInt0:I

    .line 239
    iput-object p2, v0, Lcom/meizu/common/pps/event/Int1StringList1Args;->mStringArray0:Ljava/util/ArrayList;

    .line 240
    return-object v0
.end method

.method public newInt2Args(II)Lcom/meizu/common/pps/event/Int2Args;
    .registers 4
    .param p1, "int0"  # I
    .param p2, "int1"  # I

    .line 198
    const-class v0, Lcom/meizu/common/pps/event/Int2Args;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/Int2Args;

    .line 199
    .local v0, "args":Lcom/meizu/common/pps/event/Int2Args;
    iput p1, v0, Lcom/meizu/common/pps/event/Int2Args;->mInt0:I

    .line 200
    iput p2, v0, Lcom/meizu/common/pps/event/Int2Args;->mInt1:I

    .line 201
    return-object v0
.end method

.method public newInt3Args(III)Lcom/meizu/common/pps/event/Int3Args;
    .registers 5
    .param p1, "int0"  # I
    .param p2, "int1"  # I
    .param p3, "int2"  # I

    .line 205
    const-class v0, Lcom/meizu/common/pps/event/Int3Args;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/Int3Args;

    .line 206
    .local v0, "args":Lcom/meizu/common/pps/event/Int3Args;
    iput p1, v0, Lcom/meizu/common/pps/event/Int3Args;->mInt0:I

    .line 207
    iput p2, v0, Lcom/meizu/common/pps/event/Int3Args;->mInt1:I

    .line 208
    iput p3, v0, Lcom/meizu/common/pps/event/Int3Args;->mInt2:I

    .line 209
    return-object v0
.end method

.method public newInt4String3Args(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)Lcom/meizu/common/pps/event/Int4String3Args;
    .registers 9
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "id"  # I
    .param p4, "process"  # Ljava/lang/String;
    .param p5, "pid"  # I
    .param p6, "flags"  # I
    .param p7, "reason"  # Ljava/lang/String;

    .line 173
    const-class v0, Lcom/meizu/common/pps/event/Int4String3Args;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/Int4String3Args;

    .line 174
    .local v0, "args":Lcom/meizu/common/pps/event/Int4String3Args;
    iput-object p1, v0, Lcom/meizu/common/pps/event/Int4String3Args;->mString0:Ljava/lang/String;

    .line 175
    iput-object p4, v0, Lcom/meizu/common/pps/event/Int4String3Args;->mString1:Ljava/lang/String;

    .line 176
    iput-object p7, v0, Lcom/meizu/common/pps/event/Int4String3Args;->mString2:Ljava/lang/String;

    .line 177
    iput p2, v0, Lcom/meizu/common/pps/event/Int4String3Args;->mInt0:I

    .line 178
    iput p3, v0, Lcom/meizu/common/pps/event/Int4String3Args;->mInt1:I

    .line 179
    iput p5, v0, Lcom/meizu/common/pps/event/Int4String3Args;->mInt2:I

    .line 180
    iput p6, v0, Lcom/meizu/common/pps/event/Int4String3Args;->mInt3:I

    .line 181
    return-object v0
.end method

.method public newIntArgs(I)Lcom/meizu/common/pps/event/Int1Args;
    .registers 3
    .param p1, "int0"  # I

    .line 192
    const-class v0, Lcom/meizu/common/pps/event/Int1Args;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/Int1Args;

    .line 193
    .local v0, "args":Lcom/meizu/common/pps/event/Int1Args;
    iput p1, v0, Lcom/meizu/common/pps/event/Int1Args;->mInt0:I

    .line 194
    return-object v0
.end method

.method public newIntArray2Args([I[I)Lcom/meizu/common/pps/event/IntArray2Args;
    .registers 4
    .param p1, "int0"  # [I
    .param p2, "int1"  # [I

    .line 213
    const-class v0, Lcom/meizu/common/pps/event/IntArray2Args;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/IntArray2Args;

    .line 214
    .local v0, "args":Lcom/meizu/common/pps/event/IntArray2Args;
    iput-object p1, v0, Lcom/meizu/common/pps/event/IntArray2Args;->mIntArray0:[I

    .line 215
    iput-object p2, v0, Lcom/meizu/common/pps/event/IntArray2Args;->mIntArray1:[I

    .line 216
    return-object v0
.end method

.method public newIntArray2StringArray1Args([I[I[Ljava/lang/String;)Lcom/meizu/common/pps/event/IntArray2StringArray1Args;
    .registers 5
    .param p1, "int0"  # [I
    .param p2, "int1"  # [I
    .param p3, "str0"  # [Ljava/lang/String;

    .line 220
    const-class v0, Lcom/meizu/common/pps/event/IntArray2StringArray1Args;

    .line 221
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/IntArray2StringArray1Args;

    .line 222
    .local v0, "args":Lcom/meizu/common/pps/event/IntArray2StringArray1Args;
    iput-object p1, v0, Lcom/meizu/common/pps/event/IntArray2StringArray1Args;->mIntArray0:[I

    .line 223
    iput-object p2, v0, Lcom/meizu/common/pps/event/IntArray2StringArray1Args;->mIntArray1:[I

    .line 224
    iput-object p3, v0, Lcom/meizu/common/pps/event/IntArray2StringArray1Args;->mStringArray0:[Ljava/lang/String;

    .line 225
    return-object v0
.end method

.method public newIntArrayArgs([I)Lcom/meizu/common/pps/event/IntArrayArgs;
    .registers 3
    .param p1, "int0"  # [I

    .line 244
    const-class v0, Lcom/meizu/common/pps/event/IntArrayArgs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/IntArrayArgs;

    .line 245
    .local v0, "args":Lcom/meizu/common/pps/event/IntArrayArgs;
    iput-object p1, v0, Lcom/meizu/common/pps/event/IntArrayArgs;->mIntArray:[I

    .line 246
    return-object v0
.end method

.method public newLong1String1Float1Args(JLjava/lang/String;F)Lcom/meizu/common/pps/event/Long1String1Float1Args;
    .registers 6
    .param p1, "long0"  # J
    .param p3, "str0"  # Ljava/lang/String;
    .param p4, "float0"  # F

    .line 267
    const-class v0, Lcom/meizu/common/pps/event/Long1String1Float1Args;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/Long1String1Float1Args;

    .line 268
    .local v0, "args":Lcom/meizu/common/pps/event/Long1String1Float1Args;
    iput-wide p1, v0, Lcom/meizu/common/pps/event/Long1String1Float1Args;->mLong0:J

    .line 269
    iput-object p3, v0, Lcom/meizu/common/pps/event/Long1String1Float1Args;->mString0:Ljava/lang/String;

    .line 270
    iput p4, v0, Lcom/meizu/common/pps/event/Long1String1Float1Args;->mFloat0:F

    .line 271
    return-object v0
.end method

.method public newLong2String1Args(JLjava/lang/String;J)Lcom/meizu/common/pps/event/Long2String1Args;
    .registers 7
    .param p1, "long0"  # J
    .param p3, "str0"  # Ljava/lang/String;
    .param p4, "long1"  # J

    .line 259
    const-class v0, Lcom/meizu/common/pps/event/Long2String1Args;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/Long2String1Args;

    .line 260
    .local v0, "args":Lcom/meizu/common/pps/event/Long2String1Args;
    iput-wide p1, v0, Lcom/meizu/common/pps/event/Long2String1Args;->mLong0:J

    .line 261
    iput-wide p4, v0, Lcom/meizu/common/pps/event/Long2String1Args;->mLong1:J

    .line 262
    iput-object p3, v0, Lcom/meizu/common/pps/event/Long2String1Args;->mString0:Ljava/lang/String;

    .line 263
    return-object v0
.end method

.method public newLong3String1Args(JLjava/lang/String;JJ)Lcom/meizu/common/pps/event/Long3String1Args;
    .registers 9
    .param p1, "long0"  # J
    .param p3, "str0"  # Ljava/lang/String;
    .param p4, "long1"  # J
    .param p6, "long2"  # J

    .line 250
    const-class v0, Lcom/meizu/common/pps/event/Long3String1Args;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/pps/event/ArgsFactory;->create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/Long3String1Args;

    .line 251
    .local v0, "args":Lcom/meizu/common/pps/event/Long3String1Args;
    iput-wide p1, v0, Lcom/meizu/common/pps/event/Long3String1Args;->mLong0:J

    .line 252
    iput-wide p4, v0, Lcom/meizu/common/pps/event/Long3String1Args;->mLong1:J

    .line 253
    iput-wide p6, v0, Lcom/meizu/common/pps/event/Long3String1Args;->mLong2:J

    .line 254
    iput-object p3, v0, Lcom/meizu/common/pps/event/Long3String1Args;->mString0:Ljava/lang/String;

    .line 255
    return-object v0
.end method

.method public preLaunchApps(ILjava/util/ArrayList;)V
    .registers 6
    .param p1, "level"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 108
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, p1, p2}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newInt1StringArray1Args(ILjava/util/ArrayList;)Lcom/meizu/common/pps/event/Int1StringList1Args;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSServer;->scheduleProcessEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 110
    return-void
.end method

.method public receive(Lcom/meizu/common/pps/event/Args;)V
    .registers 4
    .param p1, "data"  # Lcom/meizu/common/pps/event/Args;

    .line 143
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 144
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/meizu/pps/observer/PPSServer;->scheduleUEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 145
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .registers 6
    .param p1, "pid"  # I
    .param p2, "reason"  # Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 77
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newInt1String1Args(ILjava/lang/String;)Lcom/meizu/common/pps/event/Int1String1Args;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSServer;->scheduleProcessEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 78
    return-void
.end method

.method public setAdj([I[I)V
    .registers 6
    .param p1, "pid"  # [I
    .param p2, "adj"  # [I

    .line 82
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 83
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newIntArray2Args([I[I)Lcom/meizu/common/pps/event/IntArray2Args;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSServer;->scheduleProcessEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 84
    return-void
.end method

.method public setAppList(ILjava/util/ArrayList;)V
    .registers 6
    .param p1, "type"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 136
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newInt1StringArray1Args(ILjava/util/ArrayList;)Lcom/meizu/common/pps/event/Int1StringList1Args;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSServer;->scheduleSystemEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 137
    return-void
.end method

.method public setAudioState(I[I[I)V
    .registers 7
    .param p1, "type"  # I
    .param p2, "uids"  # [I
    .param p3, "pids"  # [I

    .line 122
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 123
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newInt1IntArray2Args(I[I[I)Lcom/meizu/common/pps/event/Int1IntArray2Args;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSServer;->scheduleSystemEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 124
    return-void
.end method

.method public setFlags(III)V
    .registers 7
    .param p1, "pid"  # I
    .param p2, "flags"  # I
    .param p3, "mask"  # I

    .line 95
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 96
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newInt3Args(III)Lcom/meizu/common/pps/event/Int3Args;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSServer;->scheduleProcessEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 97
    return-void
.end method

.method public setKeyguardState(I)V
    .registers 5
    .param p1, "state"  # I

    .line 128
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 129
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newIntArgs(I)Lcom/meizu/common/pps/event/Int1Args;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSServer;->scheduleSystemEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 130
    return-void
.end method

.method public setOom([I[I[Ljava/lang/String;)V
    .registers 7
    .param p1, "pid"  # [I
    .param p2, "oomPid"  # [I
    .param p3, "oomString"  # [Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 89
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x3

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newIntArray2StringArray1Args([I[I[Ljava/lang/String;)Lcom/meizu/common/pps/event/IntArray2StringArray1Args;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSServer;->scheduleProcessEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 91
    return-void
.end method

.method public setPss(III)V
    .registers 7
    .param p1, "pid"  # I
    .param p2, "pss"  # I
    .param p3, "rss"  # I

    .line 101
    invoke-virtual {p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 102
    :cond_7
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newInt3Args(III)Lcom/meizu/common/pps/event/Int3Args;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSServer;->scheduleProcessEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 103
    return-void
.end method
