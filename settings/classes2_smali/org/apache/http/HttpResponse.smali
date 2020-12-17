.class public interface abstract Lorg/apache/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"

# interfaces
.implements Lorg/apache/http/HttpMessage;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getEntity()Lorg/apache/http/HttpEntity;
.end method

.method public abstract getStatusLine()Lorg/apache/http/StatusLine;
.end method

.method public abstract setEntity(Lorg/apache/http/HttpEntity;)V
.end method
