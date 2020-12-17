.class public final Lcom/android/systemui/Dependency$DependencyKey;
.super Ljava/lang/Object;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/Dependency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DependencyKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p1, p0, Lcom/android/systemui/Dependency$DependencyKey;->mDisplayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 677
    iget-object p0, p0, Lcom/android/systemui/Dependency$DependencyKey;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method
