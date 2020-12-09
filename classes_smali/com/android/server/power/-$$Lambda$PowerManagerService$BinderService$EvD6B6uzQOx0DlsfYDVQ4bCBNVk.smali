.class public final synthetic Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/power/PowerManagerService$BinderService;

.field private final synthetic f$1:J

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:I

.field private final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService$BinderService;JILjava/lang/String;ILjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;->f$0:Lcom/android/server/power/PowerManagerService$BinderService;

    iput-wide p2, p0, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;->f$1:J

    iput p4, p0, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;->f$2:I

    iput-object p5, p0, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;->f$3:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;->f$4:I

    iput-object p7, p0, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;->f$0:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-wide v1, p0, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;->f$1:J

    iget v3, p0, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;->f$2:I

    iget-object v4, p0, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;->f$3:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;->f$4:I

    iget-object v6, p0, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->lambda$wakeUp$0$PowerManagerService$BinderService(JILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
