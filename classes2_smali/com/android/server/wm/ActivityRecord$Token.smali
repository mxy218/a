.class Lcom/android/server/wm/ActivityRecord$Token;
.super Landroid/view/IApplicationToken$Stub;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;)V
    .registers 4

    .line 878
    invoke-direct {p0}, Landroid/view/IApplicationToken$Stub;-><init>()V

    .line 879
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 880
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$Token;->name:Ljava/lang/String;

    .line 881
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 874
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method private static tokenToActivityRecordLocked(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 884
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 885
    return-object v0

    .line 887
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    .line 888
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_16

    .line 891
    :cond_15
    return-object p0

    .line 889
    :cond_16
    :goto_16
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 907
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$Token;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 897
    const-string v1, "Token{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 900
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 901
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
