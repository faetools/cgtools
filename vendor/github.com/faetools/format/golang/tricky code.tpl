// Package httpservice_test provides primitives to interact with the openapi HTTP API.
//
// Code generated by xxx DO NOT EDIT.
package httpservice_test

import (
        "bytes"
        "compress/gzip"
        "context"
        "encoding/base64"
        "encoding/json"
        "encoding/xml"
        "errors"
        "fmt"
        "gopkg.in/yaml.v2"
        "io"
        "io/ioutil"
        "net/http"
        "net/url"
        "path"
        "strings"
        "time"

        "github.com/deepmap/oapi-codegen/pkg/runtime"
        openapi_types "github.com/deepmap/oapi-codegen/pkg/types"
        "github.com/getkin/kin-openapi/openapi3"
        "github.com/go-chi/chi/v5"
        "github.com/labstack/echo/v4"
        externalRef0 "github.com/faetools/audience/pkg/clients"
)



// (GET /generate-auth)
// generateAuth helps test GenerateAuth.
func generateAuth(t *testing.T,
        w *httpservice.ServerInterfaceWrapper,

        ) *clients.GenerateAuthResponse {
        t.Helper()

        // create the request
        req, err := clients.NewGenerateAuthRequest(
                os.Getenv("TEST_SERVER"),)
        assert.NoError(t, err)

        // get echo.Context and recorder
        c, rec := getSetup(t, req, map[string]interface{}{
                })

        // make the request
        assert.NoError(t, w.GenerateAuth(c))

        // parse the response
        res := rec.Result()
        resp, err := clients.ParseGenerateAuthResponse(res)
        assert.NoError(t, err)
        assert.NoError(t, res.Body.Close())

        return resp
}




// (GET /generate-auth-callback)
// generateAuthCallback helps test GenerateAuthCallback.
func generateAuthCallback(t *testing.T,
        w *httpservice.ServerInterfaceWrapper,
        params *clients.GenerateAuthCallbackParams,
        ) *clients.GenerateAuthCallbackResponse {
        t.Helper()

        // create the request
        req, err := clients.NewGenerateAuthCallbackRequest(
                os.Getenv("TEST_SERVER"),params,)
        assert.NoError(t, err)

        // get echo.Context and recorder
        c, rec := getSetup(t, req, map[string]interface{}{
                })

        // make the request
        assert.NoError(t, w.GenerateAuthCallback(c))

        // parse the response
        res := rec.Result()
        resp, err := clients.ParseGenerateAuthCallbackResponse(res)
        assert.NoError(t, err)
        assert.NoError(t, res.Body.Close())

        return resp
}




// (GET /people/)
// listPeople helps test ListPeople.
func listPeople(t *testing.T,
        w *httpservice.ServerInterfaceWrapper,

        ) *clients.ListPeopleResponse {
        t.Helper()

        // create the request
        req, err := clients.NewListPeopleRequest(
                os.Getenv("TEST_SERVER"),)
        assert.NoError(t, err)

        // get echo.Context and recorder
        c, rec := getSetup(t, req, map[string]interface{}{
                })

        // make the request
        assert.NoError(t, w.ListPeople(c))

        // parse the response
        res := rec.Result()
        resp, err := clients.ParseListPeopleResponse(res)
        assert.NoError(t, err)
        assert.NoError(t, res.Body.Close())

        return resp
}




// (POST /people/)
// addPerson helps test AddPerson.
func addPerson(t *testing.T,
        w *httpservice.ServerInterfaceWrapper,

        ) *clients.AddPersonResponse {
        t.Helper()

        // create the request
        req, err := clients.NewAddPersonRequest(
                os.Getenv("TEST_SERVER"),)
        assert.NoError(t, err)

        // get echo.Context and recorder
        c, rec := getSetup(t, req, map[string]interface{}{
                })

        // make the request
        assert.NoError(t, w.AddPerson(c))

        // parse the response
        res := rec.Result()
        resp, err := clients.ParseAddPersonResponse(res)
        assert.NoError(t, err)
        assert.NoError(t, res.Body.Close())

        return resp
}




// (GET /people/search)
// searchPeople helps test SearchPeople.
func searchPeople(t *testing.T,
        w *httpservice.ServerInterfaceWrapper,

        ) *clients.SearchPeopleResponse {
        t.Helper()

        // create the request
        req, err := clients.NewSearchPeopleRequest(
                os.Getenv("TEST_SERVER"),)
        assert.NoError(t, err)

        // get echo.Context and recorder
        c, rec := getSetup(t, req, map[string]interface{}{
                })

        // make the request
        assert.NoError(t, w.SearchPeople(c))

        // parse the response
        res := rec.Result()
        resp, err := clients.ParseSearchPeopleResponse(res)
        assert.NoError(t, err)
        assert.NoError(t, res.Body.Close())

        return resp
}




// (POST /people/sync/all)
// syncAllPeople helps test SyncAllPeople.
func syncAllPeople(t *testing.T,
        w *httpservice.ServerInterfaceWrapper,

        ) *clients.SyncAllPeopleResponse {
        t.Helper()

        // create the request
        req, err := clients.NewSyncAllPeopleRequest(
                os.Getenv("TEST_SERVER"),)
        assert.NoError(t, err)

        // get echo.Context and recorder
        c, rec := getSetup(t, req, map[string]interface{}{
                })

        // make the request
        assert.NoError(t, w.SyncAllPeople(c))

        // parse the response
        res := rec.Result()
        resp, err := clients.ParseSyncAllPeopleResponse(res)
        assert.NoError(t, err)
        assert.NoError(t, res.Body.Close())

        return resp
}




// (DELETE /people/{personId})
// deletePerson helps test DeletePerson.
func deletePerson(t *testing.T,
        w *httpservice.ServerInterfaceWrapper,
        personId string,

        ) *clients.DeletePersonResponse {
        t.Helper()

        // create the request
        req, err := clients.NewDeletePersonRequest(
                os.Getenv("TEST_SERVER"),personId,)
        assert.NoError(t, err)

        // get echo.Context and recorder
        c, rec := getSetup(t, req, map[string]interface{}{
                "personId": personId,
                 })

        // make the request
        assert.NoError(t, w.DeletePerson(c))

        // parse the response
        res := rec.Result()
        resp, err := clients.ParseDeletePersonResponse(res)
        assert.NoError(t, err)
        assert.NoError(t, res.Body.Close())

        return resp
}




// (GET /people/{personId})
// getPerson helps test GetPerson.
func getPerson(t *testing.T,
        w *httpservice.ServerInterfaceWrapper,
        personId string,

        ) *clients.GetPersonResponse {
        t.Helper()

        // create the request
        req, err := clients.NewGetPersonRequest(
                os.Getenv("TEST_SERVER"),personId,)
        assert.NoError(t, err)

        // get echo.Context and recorder
        c, rec := getSetup(t, req, map[string]interface{}{
                "personId": personId,
                 })

        // make the request
        assert.NoError(t, w.GetPerson(c))

        // parse the response
        res := rec.Result()
        resp, err := clients.ParseGetPersonResponse(res)
        assert.NoError(t, err)
        assert.NoError(t, res.Body.Close())

        return resp
}




// (PATCH /people/{personId})
// updatePerson helps test UpdatePerson.
func updatePerson(t *testing.T,
        w *httpservice.ServerInterfaceWrapper,
        personId string,

        ) *clients.UpdatePersonResponse {
        t.Helper()

        // create the request
        req, err := clients.NewUpdatePersonRequest(
                os.Getenv("TEST_SERVER"),personId,)
        assert.NoError(t, err)

        // get echo.Context and recorder
        c, rec := getSetup(t, req, map[string]interface{}{
                "personId": personId,
                 })

        // make the request
        assert.NoError(t, w.UpdatePerson(c))

        // parse the response
        res := rec.Result()
        resp, err := clients.ParseUpdatePersonResponse(res)
        assert.NoError(t, err)
        assert.NoError(t, res.Body.Close())

        return resp
}



// getSetup returns the echo context and a response recorder
// for testing purposes.
func getSetup(t *testing.T,
        req *http.Request, pathParams map[string]interface{},
) (echo.Context, *httptest.ResponseRecorder) {
        t.Helper()

        // create recorder and context
        rec := httptest.NewRecorder()
        c := echo.New().NewContext(req, rec)

        // set parameters
        names := []string{}
        values := []string{}

        for name, value := range req.URL.Query() {
                names = append(names, name)
                values = append(values, strings.Join(value, ","))
        }

        for name, value := range pathParams {
                names = append(names, name)
                values = append(values, fmt.Sprintf("%v", value))
        }

        c.SetParamNames(names...)
        c.SetParamValues(values...)

        return c, rec
}
