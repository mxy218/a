.class public Lcom/google/android/startop/iorap/AppLaunchEvent$IntentProtoParcelable;
.super Ljava/lang/Object;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentProtoParcelable"
.end annotation


# static fields
.field private static final INTENT_PROTO_CHUNK_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/Parcel;)Landroid/content/Intent;
    .registers 2

    .line 386
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    .line 389
    new-instance p0, Landroid/content/Intent;

    const-string v0, "<cannot deserialize IntentProto>"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static write(Landroid/os/Parcel;Landroid/content/Intent;I)V
    .registers 4

    .line 372
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    const/16 v0, 0x400

    invoke-direct {p2, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 375
    invoke-virtual {p1, p2}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 376
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p1

    .line 378
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 379
    return-void
.end method
