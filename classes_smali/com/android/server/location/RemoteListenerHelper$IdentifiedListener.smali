.class Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/RemoteListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdentifiedListener"
.end annotation


# instance fields
.field private final mCallerIdentity:Lcom/android/server/location/CallerIdentity;

.field private final mListener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/android/server/location/CallerIdentity;",
            ")V"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mListener:Landroid/os/IInterface;

    .line 265
    iput-object p3, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;Lcom/android/server/location/RemoteListenerHelper$1;)V
    .registers 5

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;)Landroid/os/IInterface;
    .registers 1

    .line 259
    iget-object p0, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mListener:Landroid/os/IInterface;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;)Lcom/android/server/location/CallerIdentity;
    .registers 1

    .line 259
    iget-object p0, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    return-object p0
.end method
