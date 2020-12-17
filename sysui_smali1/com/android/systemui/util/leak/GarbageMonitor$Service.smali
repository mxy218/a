.class public Lcom/android/systemui/util/leak/GarbageMonitor$Service;
.super Lcom/android/systemui/SystemUI;
.source "GarbageMonitor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/GarbageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# instance fields
.field private mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 558
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/util/leak/GarbageMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public start()V
    .registers 4

    .line 542
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 544
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "sysui_force_enable_leak_reporting"

    .line 543
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 546
    :cond_11
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/SystemUIRootComponent;

    move-result-object v0

    .line 547
    invoke-interface {v0}, Lcom/android/systemui/SystemUIRootComponent;->createGarbageMonitor()Lcom/android/systemui/util/leak/GarbageMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 548
    invoke-static {}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$900()Z

    move-result v0

    if-nez v0, :cond_27

    if-eqz v1, :cond_2c

    .line 549
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/util/leak/GarbageMonitor;->startLeakMonitor()V

    .line 551
    :cond_2c
    invoke-static {}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$1000()Z

    move-result v0

    if-nez v0, :cond_34

    if-eqz v1, :cond_39

    .line 552
    :cond_34
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->startHeapTracking()V

    :cond_39
    return-void
.end method
