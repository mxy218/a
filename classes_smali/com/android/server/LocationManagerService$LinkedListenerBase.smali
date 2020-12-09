.class abstract Lcom/android/server/LocationManagerService$LinkedListenerBase;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LinkedListenerBase"
.end annotation


# instance fields
.field protected final mCallerIdentity:Lcom/android/server/location/CallerIdentity;

.field protected final mListenerName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/location/CallerIdentity;Ljava/lang/String;)V
    .registers 3

    .line 2918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2919
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 2920
    iput-object p2, p0, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    .line 2921
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/CallerIdentity;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V
    .registers 4

    .line 2913
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService$LinkedListenerBase;-><init>(Lcom/android/server/location/CallerIdentity;Ljava/lang/String;)V

    return-void
.end method
