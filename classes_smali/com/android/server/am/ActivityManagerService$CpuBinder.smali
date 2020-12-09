.class Lcom/android/server/am/ActivityManagerService$CpuBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CpuBinder"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 2200
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2184
    new-instance v0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;-><init>(Lcom/android/server/am/ActivityManagerService$CpuBinder;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 2201
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2202
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 2206
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2207
    return-void
.end method
