.class public Lorg/apache/http/impl/auth/BasicSchemeFactory;
.super Ljava/lang/Object;
.source "BasicSchemeFactory.java"

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .registers 2

    .line 52
    new-instance p0, Lorg/apache/http/impl/auth/BasicScheme;

    invoke-direct {p0}, Lorg/apache/http/impl/auth/BasicScheme;-><init>()V

    return-object p0
.end method
