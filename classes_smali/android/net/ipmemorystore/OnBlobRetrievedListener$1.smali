.class Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;
.super Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;
.source "OnBlobRetrievedListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ipmemorystore/OnBlobRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/net/ipmemorystore/OnBlobRetrievedListener;


# direct methods
.method constructor <init>(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .registers 2

    .line 34
    iput-object p1, p0, Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceVersion()I
    .registers 2

    .line 46
    const/4 v0, 0x3

    return v0
.end method

.method public onBlobRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V
    .registers 7

    .line 39
    iget-object v0, p0, Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    if-eqz v0, :cond_c

    .line 40
    new-instance v1, Landroid/net/ipmemorystore/Status;

    invoke-direct {v1, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/net/ipmemorystore/OnBlobRetrievedListener;->onBlobRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V

    .line 42
    :cond_c
    return-void
.end method
